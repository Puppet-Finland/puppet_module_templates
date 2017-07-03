#
# == Class: modulename::monit
#
# Setups monit rules for modulename
#
class modulename::monit
(
    $ensure,
    $monitor_email

) inherits modulename::params
{
    @monit::fragment { 'modulename.monit':
        ensure     => $ensure,
        basename   => 'modulename',
        modulename => 'modulename',
        tag        => 'default',
    }
}
