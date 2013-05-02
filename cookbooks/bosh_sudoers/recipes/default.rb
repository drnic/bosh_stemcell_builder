include_recipe "bosh_chroot"

# used for internal tests
directory "#{node.chroot}/etc"
cookbook_file "#{node.chroot}/etc/sudoers" do
  source "sudoers"
  action :create_if_missing
end

# echo '#includedir /etc/sudoers.d' >> $chroot/etc/sudoers
ruby_block "insert_line" do
  block do
    file = Chef::Util::FileEdit.new("#{node.chroot}/etc/sudoers")
    file.insert_line_if_no_match("#includedir /etc/sudoers.d", "#includedir /etc/sudoers.d")
    file.write_file
  end
end
