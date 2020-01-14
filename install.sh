#!/bin/env bash
if [[ "$(whoami)" != "root" ]]; then
  printf 'ERROR: please re-run install.sh as root (`sudo ./install.sh`)\n'
  exit 1
fi

printf 'linking install/mount-numen... '
&>/dev/null ln -s $(pwd)/install/mount-numen /etc/initcpio/install/mount-numen
if [[ $? -eq 0 ]]; then printf '✓'; else printf 'FAIL'; fi
printf '\n'

printf 'linking hooks/mount-numen... '
&>/dev/null ln -s $(pwd)/hooks/mount-numen   /etc/initcpio/hooks/mount-numen
if [[ $? -eq 0 ]]; then printf '✓'; else printf 'FAIL'; fi
printf '\n'

exit 0
