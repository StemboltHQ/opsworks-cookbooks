#
# Cookbook Name:: whenever
# Recipe:: default
#
# Copyright 2013, FreeRunning Technologies
#
# All rights reserved - Do Not Redistribute
#

environment = node[:deploy][:hats][:rails_env]

bash 'update-crontab' do
  cwd '/srv/www/hats/current'
  user 'deploy'
  code "bundle exec whenever --set environment=#{environment} --update-crontab hats"
end

