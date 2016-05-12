class postfix (
   $postfix_Domain = $postfix::params::postfix_Domain,
   $postfix_Relayhost = $postfix::params::postfix_Relayhost,
   $postfix_RootAlias = $postfix::params::postfix_RootAlias,
   $postfix_RewriteMail = $postfix::params::postfix_RewriteMail,
   $postfix_message_size_limit = $postfix::params::postfix_message_size_limit,
   $postfix_mailbox_size_limit = $postfix::params::postfix_mailbox_size_limit,
   $postfix_package = $postfix::params::postfix_package,
   $postfix_package_ensure = $postfix::params::postfix_package_ensure,
   $postfix_service = $postfix::params::postfix_service,
   $postfix_queue_directory = $postfix::params::postfix_queue_directory,
) inherits postfix::params {

   anchor { 'postfix::begin': } ->
   class { '::postfix::install': } ->
   class { '::postfix::config': } ->
   class { '::postfix::aliases': } ->
   class { '::postfix::pidfile': } ->
   class { '::postfix::canonical': } ->
   class { '::postfix::service': } ~>
   anchor { 'postfix::end': }

}
