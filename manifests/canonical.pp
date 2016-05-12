class postfix::canonical inherits postfix {

   file { '/etc/postfix/canonical': 
	ensure => file,
        content => template('postfix/canonical.erb'),
        owner => 'root',
        group => 'root',
        mode => '0644'
	}

   exex { 'postmap_canocical':
	command => '/sbin/postmap /etc/postfix/canonical',
	subscribe => File['/etc/postfix/canonical'],
	refreshonly => true,
	notify => Service[$postfix_service]
	}
}
