package "httpd" do
    action :install
end

file "/etc/motd" do
    owner 'root'
    group 'root'
    mode '0644'
    content 'Hello world'
end

service "httpd" do
     action :enable
end

user "Shalabh.Goyal" do
    comment  'Shalabh Goyal'
	home  '/home/shalabh'
	shell '/bin/bash'
end

cron 'test' do
    hour  '5'
	minute  '45'
	command 'timedatectl set-timezone Europe/London'
end


