include_recipe "apt"

%w[build-essential libssl-dev lsof
  strace bind9-host dnsutils tcpdump iputils-arping
  curl wget libcurl3 libcurl3-dev bison libreadline6-dev
  libxml2 libxml2-dev libxslt1.1 libxslt1-dev zip unzip
  nfs-common flex psmisc apparmor-utils iptables sysstat
  rsync openssh-server traceroute libncurses5-dev quota
  libaio1 gdb tripwire libcap2-bin libyaml-dev
].each do |pkg|
  package pkg
end