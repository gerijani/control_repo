class profile::ssh_server {
	package {'openssh-server':
		ensure => present,
	}
	service { 'sshd':
		ensure => 'running',
		enable => 'true',
	}
	ssh_authorized_key { 'root@centos-7.atlantis.local':
		ensure => present,
		user   => 'root',
		type   => 'ssh-rsa',
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQD4HQiezOT5QcvYWQ7gyeGqqBX/v9nE/5ekuLuBqnPI3pAR8MARNDXG8VQAKvK3PfzRWz+fVdsHGvWJzCApWfonRBhdJRyr0rd9AU4GDv5hTRCgrZPuKdtI6soUhLkBxineeUrikHgIU0PZHO38DJpgHZBvhMlETcPGTXSMgj6CpwhR5uskoqogUJzXVdkB16wWW8YrXu/RF7+H3QW93qIB6+sQhATlkiLELjIi45nstyrCCNK/EejGto7fupVuRa47YULz9o8bibfXX9b4wuVPzLTzPphnDdNA5Lo8OOaBbXOFtC1h5gBU49hgcEiyHGkpJPzwfmTZQbNUzWoRMpM5',
	}  
}
