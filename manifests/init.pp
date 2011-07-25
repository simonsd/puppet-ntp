import 'packages.pp'
import 'config.pp'
import 'services.pp'

class ntp {
	include ntp::packages
	include ntp::config
	include ntp::services
}
