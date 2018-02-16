Facter.add('hwraid_type') do

  # This implementation will not work on anything except Linux
  confine :kernel => 'Linux'

  setcode do
    retval = nil

    File.open("/proc/bus/pci/devices", "r") do |devices|
      while (device = devices.gets)

        # Check if the line has some RAID controller on it
        match = device.match(/(3w-9xxx|megaraid_sas|aacraid|3w-sas)/)

        if match
          # Set the return value to the matched string (e.g. "3w-9xxx")
          retval = match[0]
        end
      end
    end
    retval
  end
end
