require 'chefspec'
require 'chefspec/server'
require 'chefspec/berkshelf'

at_exit { ChefSpec::Coverage.report! }
