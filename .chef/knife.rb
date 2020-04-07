current_dir = File.dirname(__FILE__)
log_level                :info
log_location             STDOUT
node_name                "valgonzalez"
client_key               "#{current_dir}/valgonzalez.pem"
validation_client_name   "digicel-validator"
validation_key           "#{current_dir}/digicel-validator.pem"
chef_server_url          "https://panchefserver000/\
organizations/digicel"
cache_type               'BasicFile'
cache_options( :path => "#{ENV['HOME']}/.chef/checksums" )
cookbook_path            ["#{current_dir}/../cookbooks"]
#
cookbook_copyright "Digicel Panama"
cookbook_license "apachev2"
cookbook_email "valentin.gonzalez@digicelgroup.com"
