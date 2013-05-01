# Bosh stemcell builder

This is an attempt to rewrite [Bosh](https://github.com/cloudfoundry/bosh)'s [stemcell_builder](https://github.com/cloudfoundry/bosh/tree/master/stemcell_builder#readme) shell scripts into chef cookbooks.

## Development

### New cookbooks / stages

You can quickly create a Chef cookbook for a new stage using the following commands:

```
$ thor :cookbook new_stage_name
$ thor :cookbook bosh_new_stage_name
```

The above two commands are equivalent.

You can then develop the new cookbook, and run tests upon it:

```
$ cd cookbooks/bosh_new_stage_name
$ bundle
$ kitchen test
```
