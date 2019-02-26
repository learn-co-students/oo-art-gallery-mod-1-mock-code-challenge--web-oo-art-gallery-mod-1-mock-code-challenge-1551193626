require_relative '../config/environment.rb'

mona_lisa = Painting.new("Mona Lisa", 1_000_000)
da_vinci = Painting.new("Da Vinci", 2_500_100)
my_first_painting = Painting.new("My First Painting", 5)

leonardo = Artist.new("Leonardo", 33)
simpson = Artist.new("Simpson", 22)
marco = Artist.new("Marco", 2)

the_louvre = Gallery.new("The Louvre", "Paris")
the_smithsonian = Gallery.new("The Smithsonian", "Washington DC")
wax_museum = Gallery.new("Wax Museum", "NYC")

# p the_louvre.paintings
# leonardo.create_painting("Mona Lisa", 1_000_000, "The Louvre")
p Artist.all
# binding.pry

puts "Bob Ross rules."
