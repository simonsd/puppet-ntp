class ntp::services {
	if $ntp_mode == 'daemon' {
		$ntpd_ensure='running'
		$ntpd_enable='true'
		$ntp_cron='absent'
	} else {
		$ntpd_ensure='stopped'
		$ntpd_enable='false'
		$ntp_cron='present'
	}

	service {
		'ntpd':
			ensure => $ntpd_ensure,
			enable => $ntpd_enable;
	}

	cron {
		'ntp cron':
			ensure => $ntp_cron,
			command => 'ntpd -q',
#			path => '/bin:/sbin:/usr/bin:/usr/sbin';
			user => root,
			hour => '*/2';
	}
}
