require 'spec_helper'

describe package('httpd'), :if => os[:family] == 'redhat' do
  it { should be_installed }
end

describe service('httpd'), :if => os[:family] == 'redhat' do
  it { should be_enabled }
  it { should be_running }
end

describe port(80) do
  it { should be_listening }
end

describe file('/etc/sysconfig/httpd') do
  it { should exist }
end

describe file('/etc/systemd/system/httpd.service.d/limits.conf') do
  it { should exist }
end

describe file('/etc/httpd/conf/httpd.conf') do
  it { should exist }
end

describe file('/etc/httpd/conf.modules.d/00-mpm.conf') do
  it { should exist }
end
describe file('/etc/httpd/conf.modules.d/00-base.conf') do
  it { should exist }
end
describe file('/etc/httpd/conf.modules.d/00-proxy.conf') do
  it { should exist }
end

describe file('/etc/logrotate.d/httpd') do
  it { should exist }
end
