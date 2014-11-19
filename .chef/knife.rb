# See http://docs.getchef.com/config_rb_knife.html for more information on knife configuration options

current_dir = File.dirname(__FILE__)
log_level                :info
log_location             STDOUT
node_name                "csomu"
client_key               "#{current_dir}/csomu.pem"
validation_client_name   "csomuchef-validator"
validation_key           "#{current_dir}/csomuchef-validator.pem"
chef_server_url          "https://api.opscode.com/organizations/csomuchef"
cache_type               'BasicFile'
cache_options( :path => "#{ENV['HOME']}/.chef/checksums" )
cookbook_path            ["#{current_dir}/../cookbooks"]
