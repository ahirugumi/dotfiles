if status --is-login
  # homebrew
  set PATH $PATH /usr/local/bin
  set PATH $PATH /usr/local/sbin

  # my directory
  set PATH $PATH $HOME/develop
end

# aliases
alias g="git"
alias t="tmux"
alias v="vim"

alias la="ls -Gla"
alias ll='ls -ahlF'
alias l='ls -CF'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

set -g -x BROWSER vivaldi
set -g -x EDITOR vim

#color
## fish_color_normal はデフォルトの色。
## fish_color_command はコマンドの色。
## fish_color_quote はクオートされたテキストの色。
## fish_color_redirection はIOリダイレクトの色。
## fish_color_end は ; や & のようなプロセスを分けるための色。
## fish_color_error は起こり得るエラーをハイライトするための色。
## fish_color_param は通常のコマンドのパラメータの色。
## fish_color_comment はコードのコメントの色。
## fish_color_match はマッチした括弧の色。
## fish_color_search_match は履歴検索をハイライトするための色。
## fish_color_operator は * や ~ といったパラメータ展開演算子の色。
## fish_color_escape は \n や \x70 といった文字エスケープをハイライトするための色。
## fish_color_cwd はデフォルトプロンプトのカレントディレクトリの色。
## fish_color_autosuggestion はオートサジェスチョンで使われる色。
## fish_color_user はいくつかのデフォルトプロンプトで使われている現在のユーザ名の色。
## fish_color_host はいくつかのデフォルトプロンプトで使われている現在のホスト名の色。

## fish_pager_color_prefix はプレフィクス文字列の色。補完済み。
## fish_pager_color_completion は補完候補の色。
## fish_pager_color_description は説明文の色。
## fish_pager_color_progress は左下隅のプログレスバーの色。
## fish_pager_color_secondary は第二の候補のバックグラウンドの色。

## vi mode
fish_vi_key_bindings

## rmでゴミ箱に入れる
alias rm='rmtrash'

# vi modeではなんか[I]みたいなの出るからオーバーライド
function fish_mode_prompt
end

# encoding
set -x LANG ja_JP.UTF-8

function fish_user_key_bindings
  for mode in insert default visual
    fish_default_key_bindings -M $mode
  end
  fish_vi_key_bindings --no-erase
end

 # git

set git_dirty_color red
set git_not_dirty_color green

set __fish_git_prompt_showdirtystate 'yes'
set __fish_git_prompt_showstashstate 'yes'
set __fish_git_prompt_showuntrackedfiles 'yes'
set __fish_git_prompt_showupstream 'yes'
set __fish_git_prompt_color_branch yellow
set __fish_git_prompt_color_upstream_ahead green
set __fish_git_prompt_color_upstream_behind red

# Status Chars
set __fish_git_prompt_char_dirtystate ''
set __fish_git_prompt_char_stagedstate '→'
set __fish_git_prompt_char_untrackedfiles '☡'
set __fish_git_prompt_char_stashstate '↩'
set __fish_git_prompt_char_upstream_ahead '+'
set __fish_git_prompt_char_upstream_behind '-'

function fish_right_prompt -d "Write out the right prompt"
  if test $status -eq 0
    echo (set_color green)'✔ '(set_color normal)
  else
    echo (set_color red)$status' '(set_color normal)
   end
end
