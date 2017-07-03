#
# == Class: modulename::params
#
# Defines some variables based on the operating system
#
class modulename::params {

    include ::os::params

    case $::osfamily {
        'RedHat': {
            $service_name = 'modulename'
            $pidfile = '/var/run/modulename.pid'
        }
        'Debian': {
            $service_name = 'modulename'
            $pidfile = '/var/run/modulename.pid'
        }
        default: {
            fail("Unsupported OS: ${::osfamily}")
        }
    }

    if str2bool($::has_systemd) {
        $service_start = "${::os::params::systemctl} start ${service_name}"
        $service_stop = "${::os::params::systemctl} stop ${service_name}"
    } else {
        $service_start = "${::os::params::service_cmd} ${service_name} start"
        $service_stop = "${::os::params::service_cmd} ${service_name} stop"
    }
}
