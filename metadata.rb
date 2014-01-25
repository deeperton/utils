name              "utils"
maintainer        "deeperton"
maintainer_email  "deeperton@gmail.com"
license           "Apache 2.0"
description       "Installs system updates"
long_description  "Installs system updates"
version           "0.0.1"

recipe            "utils", "utils"
recipe            "utils::aptget", "System updates"
recipe            "utils::git_author", "Setting git author"
recipe            "utils::mkdirs", "Creating list of folders"
recipe            "utils::main-soft", "zip, unzip, mc"
recipe            "utils::ssh_keys", "install ssh keys from data bags"


%w{ amazon arch centos debian fedora redhat scientific ubuntu }.each do |os|
  supports os
end

supports "mac_os_x", ">= 10.6.0"
