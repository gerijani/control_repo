node default {
  file {'/root/README':
    ensure  => 'file',
    content => 'This is a readme\n
    and this is for test',
    owner   => 'root',
  }
  file {'/root/README':
    owner => 'root',
  }
}
