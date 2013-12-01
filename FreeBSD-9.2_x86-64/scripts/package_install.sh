pw usermod root -h 0 <<EOF
vagrant
EOF

pkg_add -r bash sudo
sed -e 's/^# \(%wheel ALL=(ALL) ALL\)$/&/' -i .bak /usr/local/etc/sudoers

adduser -f <<EOF
vagrant::::::vagrant::bash:vagrant
EOF
pw usermod vagrant -G wheel
