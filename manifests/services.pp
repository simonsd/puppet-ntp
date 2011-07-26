class ntp::services {
	service {
		'ntpd':
			ensure => $ntpd_ensure,
			enable => $ntpd_ensure ? {
				'running' => 'true',
				'stopped' => 'false',
			};
	}

	cron {
		'ntp cron':
			ensure => $ntp_cron,
			command => 'ntpd -q',
			user => root,
			hour => '*/2';
	}
}
