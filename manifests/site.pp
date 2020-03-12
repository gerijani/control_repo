node default {
  file {'/root/README':
    ensure  => 'file',
    content => 'This is a readme
    and only for test',
    owner   => 'root',
  }
}
node 'centos-7.atlantis.local' {
  include role::master_server
  file { '/root/README':
	ensure => file,
	content => $fqdn,
  }
}

node /^web/{
   include role::app_server
} 
node /^db/{
   include role::app_server
}
