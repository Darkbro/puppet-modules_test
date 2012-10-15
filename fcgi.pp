class nginx::fcgi inherits nginx {

        nginx::site_include{"fastcgi_params":
                content => template("nginx/includes/fastcgi_params.erb"),
        }
