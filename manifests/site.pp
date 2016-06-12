node default {
  include users
  include sshd
}

node 'puppet-agent.example.com' {
  include cowsayings
  include sshd
  include users
  include vimrc
  hiera_include('classes')
}
