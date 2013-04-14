class java {
	package { "openjdk-6-jdk":
		ensure => installed,
		require => Exec['apt-get update']
	}
}