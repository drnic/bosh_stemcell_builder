%w[bosh_base_apt bosh_base_warden_stemcell bosh_sysstat bosh_sysctl bosh_ntpdate bosh_sudoers bosh_clean].each do |name|
  include_recipe name
end
