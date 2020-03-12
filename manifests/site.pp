node default {
  file {'/root/README':
    ensure  => 'file',
    content => 'This is a readme\n
    and this is for test',
    owner   => 'root',
  }
}
node 'centos-7.atlantis.local' {
  include role::master_server
}

node /^web/{
   include role::app_server
}Kapuczinerrel 
node /^db/{
   include role::app_server
}
