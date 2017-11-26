#
# Cookbook:: myTomcat
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

######
#
# At first, chef will generate the Cookbook Structure without the attributes folder
# Create the attributes directory and create a file default.rb under it
#
# Our objective right now is to download TOMCAT and Install in the LINUX Machine
# THINK:
#       1. Where to download the binary
#       2. Where to deploy in the Machine
#
# You might say that a TOMCAT Cookbook already exists somewhere, why need to do this?
# The purpose is learn how to create your own COOKBOOK and TEST it using Kitchen.
# Many COOKBOOKs are available at supermarket.io (ITS A KNOWN FACT)
#
# Chef / Ruby Reference can be found at https://docs.chef.io
# Commands used in this TUTORIAL may not be explained thoroughly
#
##############################################################
#
# Create a default node attribute for the location of the binary and its checksum
#
##############################################################
#
# Lets download tomcat
#
remote_file "Download Tomcat Binary" do
  source node['tomcat']['download']['url']
  path "/tmp/tomcat_9.0.1.tar.gz"
  checksum node['tomcat']['download']['checksum']
end

user "tomcat" do
  comment 'tomcat user'
  system true
  shell '/bin/false'
 end

directory 'tomcat install dir' do
  path "/opt/app/tomcat"
  recursive true
  owner "tomcat"
  group "tomcat"
end
