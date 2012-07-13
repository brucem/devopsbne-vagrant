Exec { path => "/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/sbin:/sbin" }
group { "puppet": ensure => "present" }

package { 'apache2':
    ensure => 'present'
}
