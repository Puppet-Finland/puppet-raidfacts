# puppet-raidfacts

Add facts that show RAID type on the node. Currently only software RAID is 
supported, but hardware RAID controller detection is in the works.

# Facts

Currently the following facts are available:

* *has_swraid*: returns true if Linux Software RAID is enabled on the node. Otherwise returns false.

# Dependencies

None

# Operating system support

The facts have currently been confined to Linux, but adding support for other 
platforms like FreeBSD should be fairly straightforward. RAID detection should 
work properly on all modern Linux distros.
