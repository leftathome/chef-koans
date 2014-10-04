require 'serverspec'

RSpec.configure do |c|
	c.before :all do
		c.path = '/sbin:/usr/sbin:/usr/bin:/bin'
	end
end
