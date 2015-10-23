# == Class: modulename
#
# This class sets up modulename
#
# Currently functionality is limited to installing or removing the package.
#
# == Parameters
#
# [*manage*]
#   Whether to manage modulename using Puppet. Valid values are true (default) 
#   and false.
# [*ensure*]
#   Status of modulename. Valid values are 'present' (default) and 'absent'.
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
    $manage = true,
    $ensure = 'present'

) inherits modulename::params
{

validate_bool($manage)
validate_re("${ensure}", '^(present|absent)$')

if $manage {
    class { '::modulename::install':
        ensure => $ensure,
    }
}
}
