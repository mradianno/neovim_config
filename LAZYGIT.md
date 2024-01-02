## Installation:

`brew install lazygit`

## Configuration:

~/Library/Application\ Support/lazygit/config.yml:

```yaml
os:
    editCommand: 'floaterm'

  gui:
    theme:
      selectedLineBgColor:
        - underline
      selecterRangeBgColor:
        - underline

  git:
    paging:
      colorArg: never
      pager: delta --dark --paging=never --line-numbers --side-by-side
```

## Delta installation

`brew install git-delta`
