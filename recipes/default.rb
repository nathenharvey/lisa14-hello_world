#
# Cookbook Name:: hello_world
# Recipe:: default
#
# Copyright (c) 2014 The Authors, All Rights Reserved.
#

foo = "bar"

template "/home/chef/hello.txt" do
  action  :create
  mode    "0777"
  group   "chef"
  source  "hello.txt.erb"
  owner   "chef"
  variables(
    :foo => foo
  )
end







