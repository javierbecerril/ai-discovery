#!/usr/bin/env bash
set -euo pipefail

usage() {
  cat <<'EOF'
Usage:
  scripts/sync_skills.sh --target /path/to/project/ai-discovery [--dry-run] [--no-backup]

Description:
  Syncs an allowlisted set of skills from this canonical discovery workbench into a project workbench.
  By default, creates backups under:
    <target>/.sync-backups/<timestamp>/

Options:
  --target PATH   Required. Path to project ai-discovery directory.
  --dry-run       Show planned actions without writing files.
  --no-backup     Skip backup creation.
  -h, --help      Show this help.
EOF
}

TARGET=""
DRY_RUN=0
DO_BACKUP=1

while [[ $# -gt 0 ]]; do
  case "$1" in
    --target)
      TARGET="${2:-}"
      shift 2
      ;;
    --dry-run)
      DRY_RUN=1
      shift
      ;;
    --no-backup)
      DO_BACKUP=0
      shift
      ;;
    -h|--help)
      usage
      exit 0
      ;;
    *)
      echo "Unknown argument: $1" >&2
      usage >&2
      exit 1
      ;;
  esac
done

if [[ -z "$TARGET" ]]; then
  echo "Missing required --target argument." >&2
  usage >&2
  exit 1
fi

if [[ ! -d "$TARGET" ]]; then
  echo "Target does not exist or is not a directory: $TARGET" >&2
  exit 1
fi

CANON_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"

ALLOWLIST=(
  "CLAUDE.md"
  "project_templates/CLAUDE.md"
  "skills/intake-synthesizer/SKILL.md"
  "skills/dedup-clusterer/SKILL.md"
  "skills/journey-mapper/SKILL.md"
  "skills/story-writer/SKILL.md"
  "skills/prd-builder/SKILL.md"
  "skills/roadmap-prioritizer/SKILL.md"
  "skills/eng-handoff-packager/SKILL.md"
  "skills/handoff-packet/SKILL.md"
  "skills/handoff-ingestion/SKILL.md"
  "skills/learning-engineer/SKILL.md"
)

for rel in "${ALLOWLIST[@]}"; do
  if [[ ! -f "$CANON_ROOT/$rel" ]]; then
    echo "Missing source file in canonical workbench: $rel" >&2
    exit 1
  fi
done

BACKUP_DIR=""
if [[ "$DO_BACKUP" -eq 1 ]]; then
  TS="$(date +%Y%m%d_%H%M%S)"
  BACKUP_DIR="$TARGET/.sync-backups/$TS"
  if [[ "$DRY_RUN" -eq 0 ]]; then
    mkdir -p "$BACKUP_DIR"
  fi
fi

echo "Canonical: $CANON_ROOT"
echo "Target:    $TARGET"
echo "Dry run:   $DRY_RUN"
echo "Backup:    $DO_BACKUP"
[[ -n "$BACKUP_DIR" ]] && echo "Backup dir:$BACKUP_DIR"
echo

CHANGED=0

for rel in "${ALLOWLIST[@]}"; do
  src="$CANON_ROOT/$rel"
  dst="$TARGET/$rel"
  dst_dir="$(dirname "$dst")"

  if [[ "$DRY_RUN" -eq 1 ]]; then
    if [[ -f "$dst" ]] && cmp -s "$src" "$dst"; then
      echo "UNCHANGED  $rel"
      continue
    fi
    echo "SYNC       $rel"
    CHANGED=1
    continue
  fi

  mkdir -p "$dst_dir"

  if [[ -f "$dst" ]] && cmp -s "$src" "$dst"; then
    echo "UNCHANGED  $rel"
    continue
  fi

  if [[ "$DO_BACKUP" -eq 1 ]] && [[ -f "$dst" ]]; then
    mkdir -p "$BACKUP_DIR/$(dirname "$rel")"
    cp "$dst" "$BACKUP_DIR/$rel"
  fi

  cp "$src" "$dst"
  echo "SYNC       $rel"
  CHANGED=1
done

echo
if [[ "$CHANGED" -eq 1 ]]; then
  echo "Sync complete."
else
  echo "No changes needed."
fi
