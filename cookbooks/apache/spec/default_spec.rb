require 'chefspec'

at_exit { ChefSpec::Coverage.report! }

describe 'apache::default' do
  let(:chef_run) do
    ChefSpec::Runner.new.converge(described_recipe)
  end

  it 'installs apache2' do
    expect(chef_run).to install_package 'httpd'
  end
end
