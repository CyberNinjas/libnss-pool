#!/bin/bash
# generate_pool.sh
set -euo pipefail
IFS=$'\n\t'

create_name() {
  echo "pool_$((RANDOM%10000000000000000000000000000000-99999999999999999999999999999999))"
}

# For more info see `man passwd`
create_passwd_entry() {
  local name=$1
  local uid=$2
  local pw_dir="/home/${name}"

  # Default `users` group in Debian
  echo "${name}:!:${uid}:100::${pw_dir}:/bin/bash"
}

show_usage() {
  echo 'Usage: generate_pool.sh ${pool_size} ${uid_start}'
  echo "           pool_size - number of users in pool"
  echo "           uid_start - first free uid (check /etc/passwd)"
}

main() {
  if [ "$#" -ne 2 ]; then
    show_usage
    exit 1
  fi

  local pool_size="$1"
  local uid_start="$(expr $2 - 1)"
  
  for i in $(seq ${pool_size}); do
    create_passwd_entry $(create_name) $(expr $uid_start + $i)
  done
}

main $@
