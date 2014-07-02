class stadler_managerootuser{
  user { 'root':
      ensure           => hiera('managerootuser::ensure'),
      comment          => hiera('managerootuser::comment'),
      gid              => '0',
      home             => '/root',
      password         => hiera('managerootuser::rootpasswordhash'),
      password_max_age => '99999',
      password_min_age => '0',
      shell            => '/bin/bash',
      uid              => '0',
  }
}
