require 'spec_helper'

describe port(8080) do
  it { should be_listening }
end

describe file('/opt/tomcat/lib/postgresql-9.4.1208.jar') do
  it { should exist }
end
