# YAML Sorting Pre-Commit Hook

Simple pre-commit.com hook for sorting a YAML file alphabetically (without
destroying the file).

## Usage

Set-up your project with https://pre-commit.com/ and add the following
lines to your configuration file:

    - repo: https://github.com/leehambley/pre-commit-sort-yaml-keys.git
      rev: master
      hooks:
      - id: yml-sorter

Any files ending with `.yaml` or `.yml` which are staged in Git's index will be
processed

## Heads-up

`yml-sorter` is quite aggressive, amongst other weird things it may:

- append `null` to empty keys (e.g when naming a network with no config in a
  docker-compose.yml)

- sort the `version: ...` to the end of the file in a `docker-compose.yml`,
  which feels strange, but is completely harmless.

- https://www.npmjs.com/package/yml-sorter

