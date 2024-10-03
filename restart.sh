#!/bin/bash

# 設定你的 Node.js 應用程式的檔案名稱
APP_NAME="app.js"

# 獲取正在運行的 Node.js 進程的 PID
PID=$(pgrep -f "node $APP_NAME")

if [ -n "$PID" ]; then
  echo "正在重新啟動 $APP_NAME (PID: $PID)"
  
  # 終止正在運行的 Node.js 應用
  kill -9 $PID
  
  # 等待幾秒鐘以確保進程被終止
  sleep 2
else  
  echo "$PID"
  echo "$APP_NAME 沒有運行，正在啟動..."
  echo "$PATH"

fi

# 啟動 Node.js 應用程式
node  $APP_NAME &

echo "$APP_NAME 已經啟動。"
