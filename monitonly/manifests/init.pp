# == Class: modulename
#
# This class sets up modulename
#
# Currently functionality is limited to monitoring the service with monit.
#
# == Parameters
#
# [*manage*]
#   Whether to manage modulename using Puppet. Valid values are true (default)
#   and false.
# [*manage_monit*]
#   Whether to manage monit rules using Puppet. Valid values are true (default)
#   and false.
# [*ensure*]
#   Status of modulename. Valid values are 'present' (default) and 'absent'. 
#   Currently this only affects the presence of the monit configuration 
#   fragment.
# [*monitor_email*]
#   The email address where notifications are sent. Defaults to global variable 
#   $::servermonitor.
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
    Boolean                  $manage = true,
    Boolean                  $manage_monit = true,
    Enum['present','absent'] $ensure = 'present',
    String                   $monitor_email = $::servermonitor

) inherits modulename::params
{

if $manage {

    if $manage_monit {
        class { '::modulename::monit':
            ensure        => $ensure,
            monitor_email => $monitor_email,
        }
    }
}
}
