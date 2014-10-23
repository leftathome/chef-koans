require 'spec_helper'

describe 'chef-koans::default' do
  let(:cb_on_ubuntu1404) do
    ChefSpec::SoloRunner.new(
      :platform => 'ubuntu',
      :version => '14.04'
    ).converge(described_recipe)
  end
  it 'installs the apache2 package' do
    expect(cb_on_ubuntu1404).to install_package('apache2')
  end
  it 'starts the apache2 service' do
    expect(cb_on_ubuntu1404).to start_service('apache2')
  end
end
