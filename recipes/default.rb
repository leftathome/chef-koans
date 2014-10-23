#
# Cookbook Name:: chef-koans
# Recipe:: default
#
# Copyright (c) 2014 The Authors, All Rights Reserved.

# In this lesson, we want to declare two resources:
#
# The Ubuntu 'apache2' package should be installed.

# SOLUTION START
package 'apache2'
# SOLUTION END
# The Ubuntu 'apache2' service should be started.

# SOLUTION START
service 'apache2' do
  action :start
end
# SOLUTION END

# Chef will take care of the rest.
