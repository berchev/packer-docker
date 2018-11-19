describe os.name do
  it { should eq 'ubuntu' }
end

describe os.release do
  it { should eq '16.04' }
end

describe package('nginx') do
  it { should be_installed }
end

