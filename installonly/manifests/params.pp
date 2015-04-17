#
# == Class: __MODULENAME__::params
#
# Defines some variables based on the operating system
#
class __MODULENAME__::params {

    case $::osfamily {
        'RedHat': {
            $package_name = '__MODULENAME__'
        }
        'Debian': {
            $package_name = '__MODULENAME__'
        }
        default: {
            fail("Unsupported OS: ${::osfamily}")
        }
    }
}
