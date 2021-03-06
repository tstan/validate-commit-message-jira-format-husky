#!/usr/bin/env bash
commit_regex='^(([a-z]){3,}-[0-9]+|merge|revert)'
error_msg="Aborting commit. Commit messages should start with a JIRA Issue 'ABC-123', 'DEF-123', 'Merge', or 'Revert'"

if ! grep -iqE "$commit_regex" "$HUSKY_GIT_PARAMS"; then
    echo "$error_msg" >&2
    exit 1
fi

echo "Commit message looks good!"
