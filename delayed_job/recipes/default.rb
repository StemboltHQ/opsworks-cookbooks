#
# Cookbook Name:: delayed_job
# Recipe:: default
#
# Copyright 2013, FreeRunning Technologies
#
# All rights reserved - Do Not Redistribute
#

template '/etc/monit.d/delayed_job.monitrc' do
  source 'delayed_job.monitrc.erb'
  owner 'root'
  group 'root'
  mode '0755'
  variables(
    :env => node[:deploy][:hats][:rails_env]
  )
end


