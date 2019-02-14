cookbook_file '/etc/httpd/conf/httpd.conf' do                                                         
  source 'httpd.conf'  
  mode 0644                                                                                     
  action :create
end     

service 'httpd' do
  action [ :enable, :restart ]
end
