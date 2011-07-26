import 'packages.pp'
import 'config.pp'
import 'define.pp'

class ntp {
	include ntp::packages
	include ntp::config

	Class['ntp::packages'] -> Class['ntp::config']
}
