echo "Waiting for command executed successfully !!!!"
I=0
while true
do
    # put your command here #
    # like: netstat -atnp | grep 4444 #
    if [ $? -eq 0 ]; then break; fi
    sleep 1
    I=$(expr $I + 1)
    if [ $I -gt $TIMEOUT ]; then
        echo "Fail end xecuted !!!"
        exit 1
    fi
done
