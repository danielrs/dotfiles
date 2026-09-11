# AGENTS.md

## Git

### Username

The username varies depending on the project, extract it from the email in the config:

```
git config user.email
```

Examples of emails and the extracted username:

- `foo@example.com` should use `foo`
- `1234+foo@example.com` should use `foo`

### Branches

#### Format

Format should be:

```
<username>/<ticket>-<name>
```

Ticket can be skipped if it's not availble:

```
<username>/<name>
```

If the work is usually tracked (by looking at other commits), use:

```
<username>/no-ticket-<name>
```

In all cases:

- Branch name should be descriptive.

### Commits

#### Format

Format should be:

```
<ticket> feat|fix|chore|test|docs|etc: <msg>

- <change>

- <change>
```

Similar to the branch, the ticket can be skipped if not available:

```
feat|fix|chore|test|docs|etc: <msg>

- <change>

- <change>
```

If the work is usually tracked (by looking at other commits), use `NO-TICKET` instead:

```
NO-TICKET feat|fix|chore|test|docs|etc: <msg>

- <change>

- <change>
```

In all cases:

- Spaces between title, and each of the changes.
- No trailing newline.

#### Note about line breaks

Make sure the line breaks as passed correctly, and that we don't end up with a literal `\n` in the commit message.

## Git worktrees

Unless specified otherwise, all the work on new branches should happen in a separate worktrees.

If the `wt` binary is available, use that for managing worktrees.

Invoke the help if needed:

```
wt --help
```

Otherwise, use `git worktree` directly:

```
git worktree --help
```

