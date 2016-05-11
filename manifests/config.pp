class postfix::config inherits postfix {

   file { '/etc/postfix/main.cf':
	ensure => file,
	content => template('postfix/main.erb'),
	owner => 'root',
	group => 'root',
	mode => '0644',
	}
}
