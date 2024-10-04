#!/bin/zsh

# 文字で指定できる基本の色
print_basic_colors() {
    echo "Basic colors:"
    for color in black red green yellow blue magenta cyan white; do
        print -P "%F{$color}$color%f"
    done
}

# 256色を表示
print_256_colors() {
    echo "\n256 colors:"
    for i in {0..255}; do
        printf "\e[38;5;%sm%3d " "$i" "$i"
        if (( (i + 1) % 16 == 0 )); then
            echo # 16色ごとに改行
        fi
    done
}

# 基本の色を表示
print_basic_colors

# 256色を表示
print_256_colors

echo "\nEnd of colors."
