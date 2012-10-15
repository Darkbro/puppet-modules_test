class nginx::install {
   package { "nginx":
     ensure => installed,
     require => User["nginx"],
    }
   user { "nginx":
     ensure => present,
#     comment => "Nginx user",
     gid => "nginx",
     require => Group["nginx"],
    }
   group { "nginx":
     ensure => present,
    }
}
    
