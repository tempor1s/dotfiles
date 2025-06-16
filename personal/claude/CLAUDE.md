## General

- Use the path "/opt/dev/bin/dev" for running dev commands rather than just the standard "dev" prefix.
- When creating a new branch, always prefix the branch name with "bl/" (my initials)

## Style

- NEVER add inline comments describing what the code is doing
- Default to using guards and early exits rather than deeply nesting logic
- Don't interleve private / public method visibility, all private methods should be at the bottom

## Tests

When writing tests, you should never mock or stub unless absolutely necessary. Always look for similar tests to the ones you have to write as an example.
