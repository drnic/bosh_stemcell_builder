name "bosh_aws_stemcell"
version "1.0.0"
description "aws_stemcell for bosh"

%w[bosh_base_apt bosh_sysstat bosh_sysctl bosh_ntpdate bosh_sudoers bosh_clean].each do |name|
  depends name
end
