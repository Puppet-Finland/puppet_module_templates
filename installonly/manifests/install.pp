# == Class: modulename::install
#
# This class installs modulename
#
class modulename::install
(
    $ensure

) inherits modulename::params
{
    package { $::modulename::params::package_name:
        ensure   => $ensure,
        provider => $::modulename::params::package_provider,
    }
}
