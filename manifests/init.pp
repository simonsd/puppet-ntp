import 'packages.pp'
import 'config.pp'

class ntp {
	include ntp::packages
	include ntp::config
}
