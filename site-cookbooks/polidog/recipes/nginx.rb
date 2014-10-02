nginx_site 'default' do
  enable false
end

template "#{node['nginx']['dir']}/wordpress.conf" do
  source   'wordpress-common.erb'
  owner    'root'
  group    'root'
  mode     00644
  cookbook 'polidog'
end

template "#{node['nginx']['dir']}/sites-available/#{node['polidog']['nginx-wp']['host']}" do
  source   'wordpress-sites.erb'
  owner    'root'
  group    'root'
  mode     00644
  cookbook 'polidog'
  variables(
    :name => node['polidog']['nginx-wp']['name'],
    :host => node['polidog']['nginx-wp']['host'],
    :root => node['polidog']['nginx-wp']['root'],
    :code => node['polidog']['nginx-wp']['code'],
  )
end

directory node['polidog']['nginx-wp']['root'] do
 mode '0755'
 owner     node['nginx']['user']
 action    :create
 recursive true
end

nginx_site node['polidog']['nginx-wp']['host'] do
  enable true
end
