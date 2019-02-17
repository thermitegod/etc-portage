#!/bin/sh
#1.0.0
#2019-02-16

[ -x /usr/bin/eix-update ] && /usr/bin/eix-update

#egencache --repo gentoo --update -j $(nproc)

cd "$(grep location /etc/portage/repos.conf/gentoo.conf|awk '{print $3}')" && git prune

#emerge --ignore-default-opts --metadata

#[ -x /usr/bin/q ] && /usr/bin/q -r ${PORTAGE_QUIET:+-q}

