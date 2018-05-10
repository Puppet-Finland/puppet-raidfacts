Facter.add('has_swraid') do
  confine kernel: 'Linux'
  setcode do
    dir = '/dev/md'
    retval = false
    # The /dev/md directory does not exist if Linux software RAID is not
    # configured.
    if File.directory?(dir)
      Dir.foreach(dir) do |entry|
        # Check if any of the entries are block devices. If yes, we assume that
        # software RAID is configured on the system.
        if File.stat("#{dir}/#{entry}").blockdev?
          retval = true
        end
      end
    end
    retval
  end
end
