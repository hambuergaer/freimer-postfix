class postfix::config inherits postfix {

   file { '/etc/postfix/main.cf':
	ensure => file,
	content => template('postfix/main.erb'),
	owner => 'root',
	group => 'root',
	mode => '0644',
	}

   file { $postfix_queue_directory:
	ensure => directory,
	owner => 'root',
	group => 'root',
	mode => '0755',
	}
}
