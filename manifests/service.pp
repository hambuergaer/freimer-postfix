class postfix::service inherits postfix {

   service { $postfix_service:
	ensure => 'running',
	enable => true,
	hasstatus => true,
	hasrestart => true,
	subscribe => File['/etc/postfix/main.cf']
	}
}
