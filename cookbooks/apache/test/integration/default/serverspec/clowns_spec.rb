require 'spec_helper'

describe 'clowns site' do
  it 'responds on port 80' do
    expect(port 80).to be_listening 'tcp'
  end

  it 'talks about clowns' do
    expect((command 'curl -s localhost:80').stdout).to match(/clowns/)
  end
end
