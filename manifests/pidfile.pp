class postfix::pidfile inherits postfix {

   file_line { 'postfix.service':
        path    => '/usr/lib/systemd/system/postfix.service',
        line    => "PIDFile=${postfix_queue_directory}/pid/master.pid",
        match   => '[#P]IDFile=',
        ensure  => present,
        }

   exec { 'systemctl_daemon_reload':
	command => '/bin/systemctl daemon-reload',
	subscribe => File_line['postfix.service'],
	refreshonly => true
	}
	
}
