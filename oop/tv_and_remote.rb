# In this exercise, you will be creating two classes AND the driver code to test them.
# You will create a Tv class and a Remote class. 

# The Tv class will have the attributes: power, volume, and channel. 

# The Remote class will have just one attribute: tv. This will represent which tv it
# actually controls.
# The Remote will have the following instance methods: 
# toggle_power (this will turn off the tv if it's on, or turn it on if it's off)
# increment_volume (this will increase the tv's volume by 1)
# decrement_volume (this will decrease the tv's volume by 1)
# set_channel (this will change the tv's channel to whatever integer is passed to this method)


class Remote 

  def initialize (tv)
    @tv = tv
  end

  def toggle_power
    if power == "ON"
      return "OFF"
    elsif power == "OFF"
      return "ON"
    end
  end

  def increment_volume
    @increment_volume = volume + 1
  end 

  def decrement_volume
    @decrement_volume = volume - 1
  end

  def set_channel(channel)
    @set_channel = channel 
  end 
end 

remote = Remote.new(tv="LG")

class Tv < Remote

  def initialize (power, volume, channel)
    @power = power
    @volume = volume
    @channel = channel
  end

  def power
    @power
  end

  def volume
    @volume
  end

  def channel
    @channel
  end

end 
tv = Tv.new(power = "ON", volume = 45, channel = 190)

# driver code

puts "Testing TV and Remote!!!"
puts

result = tv.toggle_power
puts "For remote trigger to power the Tv.."
puts result

if result == "OFF"
  puts "PASS!"
else
  puts "F"
end 

result = tv.set_channel(100)
puts "For remote to set channel.."
puts result

if result == 100
  puts "PASS!"
else
  puts "F"
end 

result = tv.increment_volume
puts "For remote to increase volume of the Tv.."
puts result

if result == 46
  puts "PASS!"
else
  puts "F"
end 

result = tv.decrement_volume
puts "For remote to decrease volume of the Tv.."
puts result

if result == 44
  puts "PASS!"
else
  puts "F"
end 

