# == Class: __MODULENAME__::install
#
# This class installs __MODULENAME__
#
class __MODULENAME__::install
(
    $ensure

) inherits __MODULENAME__::params
{
    package { $::__MODULENAME__::params::package_name:
        ensure => $ensure,
    }
}
