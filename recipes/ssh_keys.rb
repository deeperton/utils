
u = data_bag_item("users", "vagrant")

if u['ssh_private_key'] and u['ssh_public_key']
  key_type = u['ssh_private_key'].include?("BEGIN RSA PRIVATE KEY") ? "rsa" : "dsa"

  template "/home/vagrant/.ssh/id_#{key_type}" do
    source "private_key.erb"
    owner u['id']
    group u['gid'] || u['id']
    mode "0400"
    variables :private_key => u['ssh_private_key']
    action :create_if_missing
  end

  key_type = u['ssh_public_key'].include?("ssh-rsa") ? "rsa" : "dsa"
  template "/home/vagrant/.ssh/id_#{key_type}.pub" do
    source "public_key.pub.erb"
    owner u['id']
    group u['gid'] || u['id']
    mode "0400"
    variables :public_key => u['ssh_public_key']
    action :create_if_missing
  end
end


