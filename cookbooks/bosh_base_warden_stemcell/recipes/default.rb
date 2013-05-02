directory node.chroot

execute "Creating base stemcell archive" do
  command <<-BASH
chroot=#{node.chroot}
tmpfile=`mktemp stemcell.XXXXXXX`

echo "Creating base stemcell archive at $tmpfile"
tar -C $chroot/ -czf $tmpfile .

echo "Storing stemcell archive in chroot at $chroot/var/vcap/stemcell_base.tar.gz"
mkdir -p $chroot/var/vcap
mv $tmpfile $chroot/var/vcap/stemcell_base.tar.gz
chmod 0700 $chroot/var/vcap/stemcell_base.tar.gz
BASH
  action :run
  not_if { ::File.exists?("/var/vcap/stemcell_base.tar.gz")}
end
