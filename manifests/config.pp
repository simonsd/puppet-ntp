class ntp::config {
	file {
		'ntp.conf':
			ensure => present,
			path => '/etc/ntp.conf',
			owner => root,
			group => root,
			mode => 0644,
			content => template('ntp/ntp.conf.erb');
	}
}
