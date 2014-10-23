require 'spec_helper'

describe 'chef-koans::default' do
  let(:cb_on_ubuntu1404) do
    ChefSpec::SoloRunner.new(
      platform: 'ubuntu',
      version: '14.04'
    ).converge(described_recipe)
  end
  it 'does not raise errors' do
    expect(Chef::Formatters::ErrorMapper).to_not receive(:file_load_failed)
    expect { cb_on_ubuntu1404 }.to_not raise_error
  end
end
