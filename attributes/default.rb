#
# Cookbook:: myTomcat
# Attribute:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.
#
# This is a default attributes file where all NODE Variables Initial Values can be
# declared.
#

###
# If there is a binary download, the general concept is always check for the checksum
# this is to validate that the file you are downloading is authentic and or has already been downloaded
# if the checksum is the same, it wont be downloaded again
#
# checksum is usually a SHA256 hash Value
#
###
default['tomcat']['download']['url']='http://mirror.ventraip.net.au/apache/tomcat/tomcat-9/v9.0.1/bin/apache-tomcat-9.0.1.tar.gz'
default['tomcat']['download']['checksum']='976d9aa996fc34d387ef8de87eed79c5f20c0679b76c1a1fcf331eaa7cdf758f'
