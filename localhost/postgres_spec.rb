require 'spec_helper'

describe package('postgresql95') do
  it { should be_installed }
end
describe package('postgresql95-server') do
  it { should be_installed }
end
describe package('postgresql95-libs') do
  it { should be_installed }
end

describe service('postgresql-9.5') do
  it { should be_running }
end

describe port(5432) do
  it { should be_listening }
end
