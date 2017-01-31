# In this exercise, we've already implemented the class, and you have to write the 
# driver code. 
# This class represents a hotel reservation.

class HotelReservation
  attr_accessor :customer_name, :date, :room_number, :amenities

  def initialize(reservation_info)
    @customer_name = reservation_info[:customer_name]
    @date = reservation_info[:date]
    @room_number = reservation_info[:room_number]
    @amenities = []
  end

  def add_a_fridge
    @amenities << "fridge"
  end

  def add_a_crib
    @amenities << "crib"
  end

  def add_a_custom_amenity(amenity)
    @amenities << amenity
  end
end


# Write your own driver code below! Make sure your code tests the following:
# The ability to change a room number even after a reservation has already been created
# The add_a_fridge method
# The add_a_crib method
# The add_a_custom_amenity method

# puts "Testing the ability to change a room number..."

puts "TESTING hotel reservation!!"
puts

hotelReservation = HotelReservation.new({customer_name:"John Doe" , date:"1-Feb-2017", room_number: 54})

result = hotelReservation.add_a_fridge[0]
puts "At add_a_fridge method, returned:"
puts result

if result == "fridge"
  puts "PASS!"
else 
  puts "F"
end 

result = hotelReservation.add_a_crib[1]
puts "At add_a_crib method, returned" 
puts result
puts 

if result == "crib"
  puts "PASS!"
else 
  puts "F"
end 

result = hotelReservation.add_a_custom_amenity[2]
puts "At add_a_custom_amenity method, returned:"
puts result
puts 

if result == "Morning breakfast"
  puts "PASS!"
else
    puts "F"
end 