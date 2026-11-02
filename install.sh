#!/usr/bin/env bash
# RomeoSEO free SEO skills installer
# https://romeoseo.com/skills
#
# Copies the skill folders into the folder your agent loads skills from.
#
#   bash install.sh                    all skills, Claude Code (~/.claude/skills)
#   bash install.sh --codex            Codex (~/.codex/skills)
#   bash install.sh --agents           shared agent folder (~/.agents/skills)
#   bash install.sh --project          this project only (./.claude/skills)
#   bash install.sh --dir PATH         any folder
#   bash install.sh --skill SLUG       one skill (repeat for more)
#   bash install.sh --list             list the skills and exit
#   bash install.sh --uninstall        remove the RomeoSEO skills from the target
#
# Piped from the website it fetches the pack first:
#   curl -fsSL https://romeoseo.com/skills/install.sh | bash -s -- --codex
#
# It only ever replaces folders whose SKILL.md says "author: RomeoSEO".

set -euo pipefail

# ROMEO_SKILLS_PACK_URL lets you test against a local copy of the site.
PACK_URL="${ROMEO_SKILLS_PACK_URL:-https://romeoseo.com/downloads/skills/romeo-seo-skills.zip}"
TARGET="$HOME/.claude/skills"
TARGET_LABEL="Claude Code"
ONLY=()
LIST=0
UNINSTALL=0

say() { printf '%s\n' "$*"; }
die() { printf 'romeo-seo: %s\n' "$*" >&2; exit 1; }

while [ $# -gt 0 ]; do
  case "$1" in
    --claude) TARGET="$HOME/.claude/skills"; TARGET_LABEL="Claude Code" ;;
    --codex) TARGET="${CODEX_HOME:-$HOME/.codex}/skills"; TARGET_LABEL="Codex" ;;
    --agents) TARGET="$HOME/.agents/skills"; TARGET_LABEL="shared agent skills" ;;
    --project) TARGET="$PWD/.claude/skills"; TARGET_LABEL="this project" ;;
    --dir) [ $# -ge 2 ] || die "--dir needs a path"; TARGET="$2"; TARGET_LABEL="your agent"; shift ;;
    --skill) [ $# -ge 2 ] || die "--skill needs a skill name"; ONLY+=("$2"); shift ;;
    --list) LIST=1 ;;
    --uninstall) UNINSTALL=1 ;;
    -h|--help) sed -n '2,20p' "$0" 2>/dev/null | sed 's/^# \{0,1\}//'; exit 0 ;;
    *) die "unknown option: $1 (try --help)" ;;
  esac
  shift
done

# Find the skills: next to this script (git clone or unzipped pack), or download the pack.
SOURCE=""
SCRIPT_DIR=""
if [ -n "${BASH_SOURCE[0]:-}" ] && [ -f "${BASH_SOURCE[0]}" ]; then
  SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
fi
if [ -n "$SCRIPT_DIR" ] && [ -d "$SCRIPT_DIR/skills" ]; then
  SOURCE="$SCRIPT_DIR/skills"
else
  command -v curl >/dev/null || die "curl is required"
  command -v unzip >/dev/null || die "unzip is required"
  WORK="$(mktemp -d)"
  trap 'rm -rf "$WORK"' EXIT
  say "Downloading the skill pack from romeoseo.com..."
  curl -fsSL "$PACK_URL" -o "$WORK/pack.zip" || die "download failed: $PACK_URL"
  unzip -q "$WORK/pack.zip" -d "$WORK" || die "could not unzip the pack"
  SOURCE="$(find "$WORK" -mindepth 2 -maxdepth 2 -type d -name skills | head -n 1)"
  [ -n "$SOURCE" ] || die "the pack has no skills folder"
fi

ALL=()
for dir in "$SOURCE"/*/; do
  [ -f "$dir/SKILL.md" ] && ALL+=("$(basename "$dir")")
done
[ ${#ALL[@]} -gt 0 ] || die "no skills found in $SOURCE"

if [ "$LIST" -eq 1 ]; then
  for slug in "${ALL[@]}"; do
    desc="$(sed -n 's/^description: //p' "$SOURCE/$slug/SKILL.md" | head -n 1 | cut -c1-90)"
    printf '  %-32s %s\n' "$slug" "$desc"
  done
  exit 0
fi

PICK=("${ALL[@]}")
if [ ${#ONLY[@]} -gt 0 ]; then
  PICK=()
  for slug in "${ONLY[@]}"; do
    [ -f "$SOURCE/$slug/SKILL.md" ] || die "no skill called '$slug' (run with --list)"
    PICK+=("$slug")
  done
fi

ours() { [ -f "$1/SKILL.md" ] && grep -q '^  author: RomeoSEO$' "$1/SKILL.md"; }

if [ "$UNINSTALL" -eq 1 ]; then
  removed=0
  for slug in "${PICK[@]}"; do
    if [ -d "$TARGET/$slug" ] && ours "$TARGET/$slug"; then
      rm -rf "${TARGET:?}/$slug"; removed=$((removed + 1))
    fi
  done
  say "Removed $removed RomeoSEO skill(s) from $TARGET."
  exit 0
fi

mkdir -p "$TARGET"
installed=0
skipped=()
for slug in "${PICK[@]}"; do
  dest="$TARGET/$slug"
  if [ -e "$dest" ] && ! ours "$dest"; then
    skipped+=("$slug")
    continue
  fi
  rm -rf "$dest"
  cp -R "$SOURCE/$slug" "$dest"
  installed=$((installed + 1))
done

say ""
say "Installed $installed RomeoSEO skill(s) for $TARGET_LABEL in $TARGET"
if [ ${#skipped[@]} -gt 0 ]; then
  say "Skipped (a folder with that name exists and isn't ours): ${skipped[*]}"
fi
say ""
say "Next: open your agent and ask it to use the seo-start-here skill."
say "In Claude Code you can also type /seo-start-here."
say "Docs and the full list: https://romeoseo.com/skills"
