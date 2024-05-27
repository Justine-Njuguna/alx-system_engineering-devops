# Include the standard library for common resources
include stdlib

# Define a class for managing SSH client configuration
class ssh_config {

  # Specify the location of the private key (modify if needed)
  $private_key_file = "/home/your_username/.ssh/school"

  # Resource to manage the 'PasswordAuthentication' line
  file_line { 'Disable password authentication':
    ensure => present,
    path   => '/etc/ssh/ssh_config',
    line   => 'PasswordAuthentication no',
    match  => /^\s*PasswordAuthentication\s+/, # Match existing line (optional)
  }

  # Resource to manage the 'IdentityFile' line
  file_line { 'Use private key for authentication':
    ensure => present,
    path   => '/etc/ssh/ssh_config',
    line   => "IdentityFile ${private_key_file}", # Use variable for clarity
    match  => /^\s*IdentityFile\s+/, # Match existing line (optional)
  }
}
