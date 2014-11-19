#
# Cookbook Name:: apache
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
package "httpd" do 
	action :install
end

service "httpd" do
	action [ :enable, :start ]
end
node.default["apache"]["indexfile"]="index2.html"
cookbook_file node["apache"]["serverfile"]  do
	source  node["apache"]["indexfile"]
	mode "0644"
end


