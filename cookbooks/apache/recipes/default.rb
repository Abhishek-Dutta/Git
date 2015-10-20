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

package node["package_name"] do
  action :install
end  
# 
# start apache service
# make sure its start on reboot
service node["service_name"] do
  action [:start, :enable]
end

#
# write our home page
# cookbook_file "/var/www/index.html" do
#    source "#{document_root}/index.html"
#    mode "0644"
# end

template "#{node["document_root"]}/index.html" do
   source "index.html.erb"
   mode "0644"
end
