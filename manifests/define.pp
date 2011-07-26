define ntp_client (
	$ensure = running,
	$mode = cron,
	$server = ['2.europe.pool.ntp.org', '3.europe.pool.ntp.org', '3.be.pool.ntp.org']
) {
	if $mode == 'cron' {
		$ntpd_ensure='stopped'
		if $ensure == 'running' {
			$ntp_cron='present'
		} else {
			$ntp_cron='absent'
		}
	} else {
		$ntp_cron='absent'
		if $ensure == 'running' {
			$ntpd_ensure='running'
		} else {
			$ntpd_ensure='stopped'
		}
	}
}
