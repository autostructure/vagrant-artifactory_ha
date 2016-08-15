class { 'firewall':
  ensure => stopped,
}

class { '::artifactory':
  jdbc_driver_url => 'http://artifactory.azcender.com/artifactory/ext-release-local/com.mysql/mysql-connector-java/5.1.39/mysql-connector-java-5.1.39.jar',
  db_type         => 'mysql',
  db_url          => 'jdbc:mysql://database:3306/artdb?characterEncoding=UTF-8&elideSetAutoCommits=true',
  db_username     => 'artifactory',
  db_password     => 'my_passwd',
}
