#!/bin/bash

# 設定你的 Node.js 應用程式的完整路徑
APP_PATH="/Users/sharonliu/pracJenkins/app.js"
APP_NAME="app"  # 設定應用名稱，以便 PM2 管理

cd $APP_PATH
echo $PATH

# 檢查應用是否已在 PM2 中運行
PM2_PID=$(pm2 list | grep "$APP_NAME" | awk '{print $2}')

if [ -n "$PM2_PID" ]; then
  echo "正在重新啟動 $APP_NAME (PM2 ID: $PM2_PID)"
  
  # 使用 PM2 重啟應用
  pm2 restart $APP_NAME
else  
  echo "$APP_NAME 沒有運行，正在啟動..."
  
  # 使用 PM2 啟動應用
  pm2 start $APP_PATH --name $APP_NAME
fi

# 確認應用已啟動
pm2 status $APP_NAME

echo "$APP_NAME 已經啟動。"
