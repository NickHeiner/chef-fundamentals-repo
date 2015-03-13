require 'spec_helper'

describe 'the muthafuggin BEARS site' do
  it 'responds on port 81' do
    expect(port 81).to be_listening 'tcp'
  end

  it 'talks about bears' do
    expect((command 'curl -s localhost:81').stdout).to match(/bears/)
  end
end
