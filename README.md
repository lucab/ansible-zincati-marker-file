# Sample playbook for `marker_file` strategy

This repository contains a sample Ansible playbook showing the usage of Zincati proposed `marker_file` [strategy](https://github.com/coreos/zincati/pull/540).

It includes:
 * Butane configuration to set up Zincati strategy: [zincati-marker-file.yml](./zincati-marker-file.yml)
 * Inventory with three Fedora CoreOS nodes in `coreos_zincati` group: [hosts](./hosts)
 * Playbook to manage marker files: [zincati-marker-file.yml](./zincati-marker-file.yml)
 * Group variables to steer auto-updates: [group_vars/coreos_zincati](./group_vars/coreos_zincati)
 
To execute, adjust hosts details in inventory and then run `ansible-playbook zincati-marker-file.yml`.
