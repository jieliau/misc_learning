while getopts 'c:e:t:u:p' OPT; do
    case $OPT in
        c)
            C_OPTION="$OPTARG"
        e)
            E_OPTION="$OPTARG"
        t)
            T_OPTION="$OPTARG"
        u)
            U_OPTION="$OPTARG"
        p)
            P_OPTION="$OPTARG"
        *)
            error "Unexpected option $OPT"
    esac
done
