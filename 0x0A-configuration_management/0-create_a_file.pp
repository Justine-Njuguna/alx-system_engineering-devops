# This Puppet manifest creates a file named "school" in /tmp with specific permissions and content

file { '/tmp/school':
  ensure  => present,
    owner => 'www-data',
    group => 'www-data',
    mode  => '0744',
  content => 'I love Puppet',
}
