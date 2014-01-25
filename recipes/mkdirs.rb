if node[:utils][:mkdirs].length > 0
  node[:utils][:mkdirs].each do |dirname|
    directory "/home/vagrant/#{dirname}" do
      mode        '0755'
      owner       'vagrant'
      group       'vagrant'
      action      :create
    end
  end
end
