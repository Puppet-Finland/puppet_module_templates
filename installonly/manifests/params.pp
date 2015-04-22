#
# == Class: modulename::params
#
# Defines some variables based on the operating system
#
class modulename::params {

    case $::osfamily {
        'RedHat': {
            $package_name = 'modulename'
        }
        'Debian': {
            $package_name = 'modulename'
        }
        default: {
            fail("Unsupported OS: ${::osfamily}")
        }
    }
}
