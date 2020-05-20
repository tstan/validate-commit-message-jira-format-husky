# validate-commit-message-jira-format-husky
Simple husky hook to validate a commit message starts with a JIRA ticket number. Help ensure for the most part that commits to include a ticket number which is useful for JIRA<>Git integrations.

## Example valid commit messages
- ABC-123 did a thing
- LONGPROJECTKEY-999999 great bug fix
- Revert "blah blah blah"
- Merge "branch thing"

## Usage with typicode/husky
Just include it as a commit-msg hook in your husky config.
#### **`.huskyrc.json`**
```
{
  "hooks": {
    "commit-msg": "sh validate-commit-message-jira-format.sh"
  }
}
```
