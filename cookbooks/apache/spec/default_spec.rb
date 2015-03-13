require 'spec_helper'

describe 'apache::default' do
  let(:chef_run) do
    ChefSpec::Runner.new.converge(described_recipe)
  end

  it 'installs apache2' do
    expect(chef_run).to install_package 'httpd'
  end

  it 'writes clowns.conf file' do
    expect(chef_run).to create_template('/etc/httpd/conf.d/clowns.conf')
  end
end
