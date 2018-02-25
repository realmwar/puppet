file { '/etc/puppetlabs/puppet/puppet.conf':
  ensure => present
}->
file_line { 'Append a line to /etc/puppetlabs/puppet/puppet.conf':
  path => '/etc/puppetlabs/puppet/puppet.conf',  
  line => 'autosign = true',
}

file { '/etc/puppetlabs/puppet/autosign.conf':
    path    => "/etc/puppetlabs/puppet/autosign.conf",
    ensure  => present,
    owner   => "root",
    group   => "root",
    mode    => "0644",
    content => "*";
}
