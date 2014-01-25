
template "/home/vagrant/.gitconfig" do
  source "gitconfig.erb"
  owner 'vagrant'
  group 'vagrant'
  mode "0664"
  variables(:developer_username => node[:utils][:developer_username],
      :developer_email => node[:utils][:developer_email])
  action :create_if_missing
end
