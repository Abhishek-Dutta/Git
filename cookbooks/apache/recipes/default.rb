#
# Cookbook Name:: apache
# Recipe:: default
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
# chef-repo/cookbooks/recipes/default.rb
#
# install apache
package_name = "apache2"
service_name = "apache2"
document_root = "/var/www"

if node["platform"] == "ubuntu"
	package_name = "apache2"
	service_name = "apache2"
	document_root = "/var/www"
end

package package_name do
  action :install
end  
# 
# start apache service
# make sure its start on reboot
service service_name do
  action [:start, :enable]
end

#
# write our home page
# cookbook_file "/var/www/index.html" do
#    source "#{document_root}/index.html"
#    mode "0644"
# end

template "#{document_root}/index.html" do
   source "index.html.erb"
   mode "0644"
end
