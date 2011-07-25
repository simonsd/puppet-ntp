class ntp::packages {
	package {
		'ntp':
			ensure => present;

		'ntpdate':
			ensure => present;
	}
}
