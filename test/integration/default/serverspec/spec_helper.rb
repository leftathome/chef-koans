require 'serverspec'

set :backend, :exec

RSpec.configure do |c|
	c.before :all do
		c.path = '/sbin:/usr/sbin:/usr/bin:/bin'
	end
end
