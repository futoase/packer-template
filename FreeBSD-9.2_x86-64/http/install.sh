PARTITIONS=ada0
DISTRIBUTIONS="base.txz kernel.txz pkg.txz"

#!/bin/sh
cat >> /etc/rc.conf <<EOF
ifconfig_em0="DHCP"
sshd_enable="YES"
dumpdev="AUTO"
EOF

cat >> /etc/resolv.conf <<EOF
8.8.8.8
208.67.222.222
EOF

/etc/rc.d/netif restart

pw usermod root -h 0 <<EOF
vagrant
EOF

pkg install bash
pkg install sudo
sed -e 's/^# \(%wheel ALL=(ALL) ALL\)$/&/' -i .bak /usr/local/etc/sudoers

adduser -f <<EOF
vagrant::::::vagrant::bash:vagrant
EOF
pw usermod vagrant -G wheel
