#/bin/sh

# function to create symbolic links
create_symlink() {
    local FILENAME=$1
    local SOURCE_FILE="$HOME/dotfiles/$FILENAME"
    local TARGET_FILE="$HOME/$FILENAME"

    # ソースがあるか確認
    if [ ! -e "$SOURCE_FILE" ]; then
        echo "$SOURCE_FILE does not exist in $HOME/dotfiles"
        return 1
    fi

    # 既にあったら退避
    if [ -e "$TARGET_FILE" ]; then
        echo "$TARGET_FILE already exists in $HOME. renaming..."
        mv "$TARGET_FILE" "$TARGET_FILE.old"
    fi

    ln -s "$SOURCE_FILE" "$TARGET_FILE"
    echo "$TARGET_FILE -> $SOURCE_FILE のシンボリックリンクを作成しました"
}

# create symbolic link
create_symlink ".vimrc"
create_symlink ".tmux.conf"
create_symlink ".zshrc_origin"
create_symlink ".gitconfig"
