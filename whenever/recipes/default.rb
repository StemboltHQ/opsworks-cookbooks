#
# Cookbook Name:: whenever
# Recipe:: default
#
# Copyright 2013, FreeRunning Technologies
#
# All rights reserved - Do Not Redistribute
#

node[:deploy].each do |application, deploy|
  deploy = node[:deploy][application]

  bash 'update-crontab' do
    cwd "#{deploy[:deploy_to]}/current"
    user 'deploy'
    code "bundle exec whenever --set environment=#{deploy[:rails_env]} --update-crontab #{application}"
  end
end
