class postfix::service inherits postfix {

   service { $postfix_service:
	ensure => 'running',
	enable => true,
	hasstatus => true,
	hasrestart => true,
	subscribe => File['/etc/postfix/main.cf'],
        require => File_line['postfix.service']
	}

  file_line { 'postfix.service':
        path    => '/usr/lib/systemd/system/postfix.service',
        line    => "PIDFile=${postfix_queue_directory}/pid/master.pid",
        match   => '[#P]IDFile=',
        ensure  => present,
        }
}
