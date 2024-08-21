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

## 内部でやっていること

1. 各種ファイルのシンボリックリンクを張る
2. git, vim, curl, zsh, tmuxが入ってることを確認する
   1. 入ってなかったらここで終了
3. vim-plugを入れる
4. TODO: zsh周りのプラグインを入れる

※既に同名のリソースが存在していた場合、基本的に上書きはしない。
