Facter.add('has_swraid') do
  confine :kernel => 'Linux'

  setcode do
    dir='/dev/md'
    retval=false

    if File.directory?(dir)
      Dir.foreach(dir) { |entry|
        if File.stat("#{dir}/#{entry}").blockdev?
          retval=true
        end
      }
    end
    retval
  end
end
