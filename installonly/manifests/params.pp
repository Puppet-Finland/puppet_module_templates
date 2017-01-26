#
# == Class: modulename::params
#
# Defines some variables based on the operating system
#
class modulename::params {

    case $::osfamily {
        'RedHat': {
            $package_name = 'modulename'
            $package_provider = undef
        }
        'Debian': {
            $package_name = 'modulename'
            $package_provider = undef
        }
        'windows': {
            $package_name = 'modulename'
            $package_provider = 'chocolatey'
        }

        default: {
            fail("Unsupported OS: ${::osfamily}")
        }
    }
}
