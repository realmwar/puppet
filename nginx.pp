class nginx {
  package { 'nginx':
    ensure => latest,
	port    => '8080'
  }->
  service { 'nginx':
    ensure => running,
    enable => true,
    require => Package['nginx']
  }
}