alias adbreboot='adb kill-server;adb start-server'
alias gettraces='adb pull /data/traces/anr.txt $ANDROID_LOGS_DIR/anrs/anr\`date +%s\`'