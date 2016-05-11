class postfix::params {

   $postfix_Domain = 'example.com',
   $postfix_Relayhost = '127.0.0.1',
   $postfix_RootAlias = 'admin@example.com')
   $postfix_message_size_limit = '10240000'
   $postfix_mailbox_size_limit = '102400000'
   $postfix_package = 'postfix'
   $postfix_package_ensure = 'installed'
   $postfix_service = 'postfix'
   $postfix_queue_directory = '/var/spool/postfix'

}
