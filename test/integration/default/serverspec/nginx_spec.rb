require 'serverspec'

include Serverspec::Helper::Exec
include Serverspec::Helper::DetectOS

describe package('nginx') do
  it { should be_installed }
end

describe process('nginx') do
  it { should be_running }
end

describe port('80') do
  it { should be_listening.with('tcp') }
end
