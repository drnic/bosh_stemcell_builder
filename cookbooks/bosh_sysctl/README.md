# chef cookbook: bosh_sysctl

Sets up sysctl for bosh.

## Development

To run internal tests for this cookbook:

```
$ bundle
$ kitchen test
...
[...] INFO: cookbook_file[/etc/sysctl.d/60-bosh-sysctl.conf] owner changed to 0
[...] INFO: cookbook_file[/etc/sysctl.d/60-bosh-sysctl.conf] group changed to 0
[...] INFO: cookbook_file[/etc/sysctl.d/60-bosh-sysctl.conf] mode changed to 644
[...] INFO: cookbook_file[/etc/sysctl.d/60-bosh-sysctl.conf] created file /etc/sysctl.d/60-bosh-sysctl.conf
...
-----> Verifying <default-ubuntu-1204>
       Suite path directory /opt/busser/suites does not exist, skipping.
       Uploading /opt/busser/suites/bash/sysctl_test.sh (mode=0644)
-----> Running bash test suite
-----> [bash] sysctl_test.sh
       Finished verifying <default-ubuntu-1204> (0m1.92s).
...
```
