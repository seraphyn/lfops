source /tmp/lib.sh

if is_not_installed 'nftables'; then exit $FAIL; fi
if is_disabled 'nftables'; then exit $FAIL; fi
if is_enabled 'firewalld'; then exit $FAIL; fi
if is_active 'firewalld'; then exit $FAIL; fi
exit $PASS
