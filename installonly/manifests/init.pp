# == Class: __MODULENAME__
#
# This class sets up __MODULENAME__
#
# Currently functionality is limited to installing or removing the package.
#
# == Parameters
#
# [*manage*]
#   Whether to manage __MODULENAME__ using Puppet. Valid values 'yes' (default) and 
#   'no'.
# [*ensure*]
#   Status of __MODULENAME__. Valid values 'present' (default) and 'absent'.
#
# == Authors
#
# Samuli Seppänen <samuli.seppanen@gmail.com>
#
# == License
#
# BSD-license. See file LICENSE for details.
#
class __MODULENAME__
(
    $manage = 'yes',
    $ensure = 'present'

) inherits __MODULENAME__::params
{

if $manage == 'yes' {

    class { '__MODULENAME__::install':
        ensure => $ensure,
    }
}
}
