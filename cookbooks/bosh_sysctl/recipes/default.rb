include_recipe "bosh_chroot"

directory "#{node.chroot}/etc/sysctl.d" do
  owner "root"
  group "root"
  mode "0755"
  recursive true
  action :create
end

cookbook_file "#{node.chroot}/etc/sysctl.d/60-bosh-sysctl.conf" do
  owner "root"
  group "root"
  mode "0644"
  action :create
end