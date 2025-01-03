# YMMV

`git clone https://github.com/dillingerlab/kickstart.nvim.git $(HOME)/.config/nvim`

## Mason

- `yaml-language-server`

## Quick Start
- `:qa` to exit
- ` ` is <leader> - usi this to see what else the leader provides
- `<ctrl+y` for autocomplete, `ctrl+n|p` to move up and down

## Git Worktrees
1. `git clone --bare`
1. use `leader+ga` and `leader+gw`

## Dadbod UI

### SQLite

```json
{
    "url": "sqlite:<path>/<file>.db",
    "name": "example"
}
```

### JDBC

```json
{
    "url": "jdbc:sqlserver://;serverName=<example>;databaseName=<name>",
    "name": "example"
}
```

### SQLServer

```json
{
    "url": "sqlserver://;serverName=<example>;databaseName=<name>;user=<example>;password=<example>",
    "name": "example"
}
```
