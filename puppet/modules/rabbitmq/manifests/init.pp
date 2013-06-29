class rabbitmq {

    package { 'rabbitmq-server':
        ensure => latest,
        require => Exec['apt-get update'],
    }

    service { "rabbitmq-server":
        ensure => running,
        enable => true,
        hasrestart => true,
        require => Package["rabbitmq-server"],
    }
}