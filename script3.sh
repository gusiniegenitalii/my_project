#!/bin/bash

# Выводим список PV и соответствующих VG
echo "Список PV и VG:"
sudo pvs --noheadings -o pv_name,vg_name | while read pv vg; do
    echo "$pv = $vg"
done
