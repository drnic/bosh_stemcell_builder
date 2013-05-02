%w[bosh_sysstat bosh_sysctl bosh_ntpdate bosh_sudoers bosh_clean].each do |name|
  include_recipe name
end
