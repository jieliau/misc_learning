while [ $# -gt 0 ];
do
    case "$1" in
        --privileged)
            PRIVILEGED="1"
            ;;
        --debug)
            DEBUG="1"
            ;;
        --nginx)
            NGINX=$2
            shift
            ;;
        --script)
            SCRIPT=$2
            shift
            ;;
    esac
    shift
done
