curl -k -X GET -u $USER:$PASS $URL

TMPFILE=$(mktemp)
cat<<EOF > $TMPFILE
{
    "key1": "Value1",
    "key2": "Value2"
}
EOF

curl -k -X POST -u $USER:$PASS $URL -d @$TMPFILE
