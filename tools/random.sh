#!/bin/zsh

# とりあえずファイルの中のランダムの１行を表示するだけ
MAX_LINES=$(wc -l < $1 )

LINE=$(echo $(( RANDOM % MAX_LINES + 1 )) )

sed -n "$LINE p" $1

