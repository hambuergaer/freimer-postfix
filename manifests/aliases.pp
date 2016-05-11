class postfix::aliases inherits postfix {

   file { '/etc/aliases':
	ensure  => present,
	owner => 'root',
	group => 'root',
	mode => '0644',
	}

   file_line { 'aliases':
	path    => '/etc/aliases',
	line    => "root:               $postfixRootAlias",
	match   => '[#r]oot:',
	ensure  => present,
	}

   exec { 'postalias':
	command => '/usr/sbin/postalias /etc/aliases',
	subscribe => File['/etc/aliases'],
	refreshonly => true,
        }
}
