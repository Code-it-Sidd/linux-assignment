LOG_FILE="$HOME/system_usage.log"

echo "System monitoring started. Press CTRL+C to stop."

while true
do
    {
        echo "----- $(date) -----"
        top -bn1 | grep "Cpu(s)"
        free -h
        echo "-------------------"
    } >> "$LOG_FILE"
    
    sleep 5
done
