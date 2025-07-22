# This file is sourced for all shells, not just interactive ones like `.zshrc`.

_fzf_complete_realpath () {
  # Used for `tab` completion in `shell/.completions` and `shell/.external`.
  # Can be customized to behave differently for different objects.
  local realpath="${1:--}"  # read the first arg or stdin if arg is missing

  if [ "$realpath" = '-' ]; then
    # It is a stdin, always a text content:
    local stdin="$(< /dev/stdin)"
    echo "$stdin" | bat \
      --language=sh \
      --plain \
      --color=always \
      --theme="$SOBOLE_SYNTAX_THEME" \
      --wrap=character \
      --terminal-width="$FZF_PREVIEW_COLUMNS" \
      --line-range :100
    return
  fi

  if [ -d "$realpath" ]; then
    tree -a -I '.DS_Store|.localized' -C "$realpath" | head -100
  elif [ -f "$realpath" ]; then
    mime="$(file -Lbs --mime-type "$realpath")"
    category="${mime%%/*}"
    if [ "$category" = 'image' ]; then
      # I guessed `60` to be fine for my exact terminal size
      local default_width=$(( "$FZF_PREVIEW_COLUMNS" < 60 ? 60 : "$FZF_PREVIEW_COLUMNS" ))
      catimg -r2 -w "$default_width" "$realpath"
    elif [[ "$mime" =~ 'binary' ]]; then
      hexyl --length 5KiB \
        --border none \
        --terminal-width "$FZF_PREVIEW_COLUMNS" \
        "$realpath"
    else
      bat --number \
        --color=always \
        --line-range :100 \
        --theme="$SOBOLE_SYNTAX_THEME" \
        "$realpath"
    fi
  else
    # This is not a directory and not a file, just print the string.
    echo "$realpath" | fold -w "$FZF_PREVIEW_COLUMNS"
  fi
}
