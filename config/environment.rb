require 'pry'
require_relative '../app/models/artist.rb'
require_relative '../app/models/gallery.rb'
require_relative '../app/models/painting.rb'


ben = Artist.new("Ben", 5)
chris = Artist.new("Chris", 1)
steve = Artist.new("Steve", 3)

midtown = Gallery.new("Midtown", "NYC")
soho = Gallery.new("SOHO", "NYC")
noho = Gallery.new("NOHO", "NYC")
les = Gallery.new("LES", "NYC")

apple = Painting.new("Apple", 60, ben, midtown)
peach = Painting.new("Peach", 100, chris, soho)
grape = Painting.new("Grape", 10, steve, les)
cherry = Painting.new("Cherry", 200, chris, noho)


p ben.paintings
# p ben.paintings
p ben.galleries
# p Painting.all
# p chris.paintings
# puts Painting.total_price

#got stuck and was unable to get far because of an error I was unable to fix... got it with 4 minutes left

#I was passing in a string as a variable for "Painiting.new" - for the Artist and Gallery values
#kept getting an empty array and didn't catch this mistake until 4 minutes left...
