#!/bin/bash
sudo pvcreate /dev/loop0
sudo vgcreate fake_vg /dev/loop0
sudo lvcreate -L 500M -n fake_lv fake_vg
sudo mkfs.ext4 /dev/fake_vg/fake_lv
sudo mkdir -p /mnt/fake
sudo mount /dev/fake_vg/fake_lv /mnt/fake

