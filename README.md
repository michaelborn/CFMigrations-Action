# CFMigrations Github Action

Build an automated migration check using [`commandbox-migrations`](https://www.forgebox.io/view/commandbox-migrations).

## Usage


```yml
- uses: actions/checkout@v2
- name: Run CommandBox-Migrations
  uses: Ortus-Solutions/cfmigrations-action@v1
  with:
    cmd: migrate up
```

## Arguments

* `cmd` - Migration command to run.

## Full Workflow Example

Use this as an example of a working `migrationCheck.yml`.

**Highlights:**

1. This workflow will run on pushes to the `main` branch.
2. The workflow starts a mariadb service
3. and runs `migrate up`/`migrate down`

```yml
name: CFMigrations Check

on:
  push:
    branches:
      - main

jobs:
  migrate:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v2
      - uses: Ortus-Solutions/cfmigrations-action@v1
        with:
          cmd: migrate up
      - uses: Ortus-Solutions/cfmigrations-action@v1
        with:
          cmd: migrate down
```

# License

The scripts and documentation in this project are released under the [MIT License](LICENSE)

## Code of Conduct

> :book: Do unto others as you would have them do to you - [Matthew 7:12](https://www.biblegateway.com/passage/?search=matthew+7%3A12&version=NIV)