class postfix::install inherits postfix {

   package { $postfix_package:
	ensure  => $postfix_package_ensure
	}
}
