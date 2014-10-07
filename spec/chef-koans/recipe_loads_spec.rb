require 'spec_helper'

describe 'chef-koans::default on ubuntu-14.04' do
  let(:cb_on_ubuntu1404) do
    ChefSpec::Runner.new(
      :platform => 'ubuntu',
      :version => '14.04'
      ).converge('chef-koans::default')
  end
  it "does nothing" do
    expect(:cb_on_unbuntu1404).to do_nothing
  end
end
