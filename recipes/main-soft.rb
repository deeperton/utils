case node['platform_family']
when 'debian'
  %w(zip unzip mc).each do |package|
    package package
  end
end
