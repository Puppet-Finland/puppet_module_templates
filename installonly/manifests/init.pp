# == Class: modulename
#
# This class sets up modulename
#
# Currently functionality is limited to installing or removing the package.
#
# == Parameters
#
# [*manage*]
#   Whether to manage modulename using Puppet. Valid values are 'yes' (default) 
#   and 'no'.
# [*ensure*]
#   Status of modulename. Valid values 'present' (default) and 'absent'.
#
# == Authors
#
# Samuli Seppänen <samuli.seppanen@gmail.com>
#
# == License
#
# BSD-license. See file LICENSE for details.
#
class modulename
(
    $manage = 'yes',
    $ensure = 'present'

) inherits modulename::params
{

if $manage == 'yes' {

    class { '::modulename::install':
        ensure => $ensure,
    }
}
}
