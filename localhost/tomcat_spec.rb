require 'spec_helper'

describe user('tomcat') do
  it { should exist }
  it { should belong_to_group 'tomcat' }
  it { should have_uid 1200 }
  it { should have_login_shell '/sbin/nologin' }
end

describe file('/etc/rc.d/init.d/tomcat') do
  it { should exist }
  it { should be_executable }
end

describe file('/etc/default/tomcat') do
  it { should exist }
end

describe file('/etc/cron.daily/tomcat') do
  it { should exist }
end

describe file('/etc/logrotate.d/tomcat') do
  it { should exist }
end

describe file('/opt/tomcat/conf/server.xml') do
  it { should exist }
  it { should be_owned_by 'tomcat' }
  it { should be_readable.by('owner') }
  it { should be_writable.by('owner') }
end

describe file('/opt/tomcat/conf/web.xml') do
  it { should exist }
end

describe port(8080) do
  it { should be_listening }
end

describe file('/opt/tomcat/lib/postgresql-9.4.1208.jar') do
  it { should exist }
end

