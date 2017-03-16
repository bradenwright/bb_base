name             'bb_base'
maintainer       'YOUR_NAME'
maintainer_email 'YOUR_EMAIL'
license          'All rights reserved'
description      'Installs/Configures bb_base'
long_description 'Installs/Configures bb_base'
version          '0.1.0'
supports	 'ubuntu'

%w{ chef-vault }.each do |ckbk|
  depends ckbk
end
