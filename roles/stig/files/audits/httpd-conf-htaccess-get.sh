source /tmp/lib.sh
source /tmp/lib-apache-httpd.sh

conf=$(echo "$APACHE_CONF" | grep -i 'Files' | grep -i '\.ht')
if [ -n "$conf" ]; then
    exit $REV
fi

exit $FAIL
