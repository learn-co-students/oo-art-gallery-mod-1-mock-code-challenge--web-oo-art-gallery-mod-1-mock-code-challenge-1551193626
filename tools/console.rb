require_relative '../config/environment.rb'


meredith = Artist.new('mere', 10)

new_painting = Painting.new('sunset', 1000)

meredith.create_painting('dogs', 900, 'LES')

binding.pry

puts "Bob Ross rules."
