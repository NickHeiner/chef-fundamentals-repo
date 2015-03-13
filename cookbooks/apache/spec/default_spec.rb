require 'chefspec'

describe 'apache::default' do
  chef_run = ChefSpec::Runner.new.converge('apache::default')

  it 'installs apache2' do
    expect(chef_run).to install_package 'httpd'
  end
end
