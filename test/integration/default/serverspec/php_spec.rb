require 'serverspec'

include Serverspec::Helper::Exec
include Serverspec::Helper::DetectOS


describe 'php config' do
  context php_config("memory_limit") do
    its(:value) { should eq '128M' }
  end
end
