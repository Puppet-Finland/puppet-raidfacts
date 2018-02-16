# puppet-raidfacts

Add facts that allow determining the RAID type on the node. This information can 
be used to automatically enable RAID monitoring using modules such as 
these:

* https://github.com/Puppet-Finland/puppet-hwraid
* https://github.com/Puppet-Finland/puppet-mdadm

# Facts

Currently the following facts are available:

* *has_swraid*: returns true if Linux Software RAID is enabled on the node. Otherwise returns false.
* *hwraid_type*: returns the RAID controller type (3w-9xxx, megaraid_sas, aacraid, 3w-sas)

# Dependencies

None

# Operating system support

The facts have currently been confined to Linux, but adding support for other 
platforms like FreeBSD should be fairly straightforward. Both software and 
hardware RAID detection should work properly on all modern Linux distros.
