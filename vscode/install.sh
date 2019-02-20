#!/usr/bin/env bash

set -e

# Can be updated with:
# code --list-extensions
CODE_EXTENSIONS=(
  alexdima.copy-relative-path
  alexkrechik.cucumberautocomplete
  EditorConfig.EditorConfig
  formulahendry.auto-close-tag
  mjmcloug.vscode-elixir
  ms-python.python
  octref.vetur
  stevejpurves.cucumber
  streetsidesoftware.code-spell-checker
  streetsidesoftware.code-spell-checker-russian
  teabyii.ayu
  WakaTime.vscode-wakatime
)

for ext in "$CODE_EXNTENSIONS"; do
  code --install-extension "$ext"
done
