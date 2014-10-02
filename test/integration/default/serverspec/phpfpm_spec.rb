require 'serverspec'
include Serverspec::Helper::Exec
include Serverspec::Helper::DetectOS

describe package('php55-fpm') do
  it { should be_installed }
end

describe service('php-fpm-5.5') do
  it { should be_enabled }
  it { should be_running }
end
