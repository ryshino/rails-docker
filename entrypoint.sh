#!/bin/bash
# シェルスクリプトであることを示す（bashを使用）

set -e
# エラーが発生したら即座にスクリプトを終了する設定

rm -f /sample_rails/tmp/pids/server.pid
# 前回のサーバーPIDファイルを削除

exec "$@"
# DockerfileのCMDで指定されたコマンドを実行
# 今回の場合: ["rails", "server", "-b", "0.0.0.0"]