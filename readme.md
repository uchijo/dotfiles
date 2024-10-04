# dotfiles

## 使い方

ホームディレクトリで以下を実行する

```shell-session
$ git clone git@github.com:uchijo/dotfiles
...

$ cd dotfiles
$ ./install.sh
...
```

その後、~/.zshrcに以下の行を追加

```.zshrc
# set this to change prompt color
# PROMPT_COLOR='blue'
# PROMPT_COLOR='20'
# PROMPT_COLOR='150'

. .zshrc_origin
```

## 必要なツール類

- git
- vim
- curl
- zsh
- tmux

## 内部でやっていること

1. 各種ファイルのシンボリックリンクを張る
2. git, vim, curl, zsh, tmuxが入ってることを確認する
   1. 入ってなかったらここで終了
3. vim-plugを入れる
4. zsh周りのプラグインを入れる

※既に同名のリソースが存在していた場合、基本的に上書きはしない。

## 調整ノブ

- `PROMPT_COLOR`
  - プロンプトの色を変更できる。デフォルトでは `green` が設定されている。
  - `./color_sample.sh` を使用することで、色のサンプルを閲覧可能。
