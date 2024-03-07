## Installation:

<details><summary> Linux and Mac </summary>

```sh
brew install lazygit
```

</details>

<details><summary> Windows </summary>

If you're using `cmd.exe`:

```
choco install lazygit
```
</details>


## Configuration:

~/Library/Application\ Support/lazygit/config.yml:

```yaml
os:
  editCommand: floaterm
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
