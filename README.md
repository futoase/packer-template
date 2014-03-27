packer-template
===============

packer template files.

I created this repository, inspired by https://github.com/hnakamur/my-packer-template-files.
Ubuntu-12.04-x86_64 template is originally based on [mitchellh/packer-ubuntu-12.04-docker](https://github.com/mitchellh/packer-ubuntu-12.04-docker).

How to use
-----------

1. Download [VirtualBox](https://www.virtualbox.org/).
2. Download [Packer](http://www.packer.io/).
3. Execute command of ```packer build template.json```.
4. Build Vagrant box!
5. Execute command of ```vagrant box add new-vagrant-box-name build.box```.

Running Vagrant
---------------

1. Download [Vagrant](http://www.vagrantup.com/).
2. Install [vagrant-omnibus-plugin](https://github.com/schisamo/vagrant-omnibus)
3. Install [vagrant-berkshelf-plugin](https://github.com/riotgames/vagrant-berkshelf)
4. Execute command of ```vagrant up```
5. Provision chef ```vagrant provision```

License
-------

MIT.

[![Bitdeli Badge](https://d2weczhvl823v0.cloudfront.net/futoase/packer-template/trend.png)](https://bitdeli.com/free "Bitdeli Badge")
