require_relative 'artist'
require_relative 'gallery'
require_relative 'painting'

pat = Artist.new("Patrick", 5)
tom = Artist.new("Tom", 12)
moma = Gallery.new("MOMA", "NYC")
# p Artist.all
#
scream = pat.create_painting("The Scream", 80000, moma)
starry_night = tom.create_painting("Starry night", 900000, moma)
# p pat.paintings
# p pat.galleries
# p pat.cities
# p Artist.total_experience
p Artist.most_prolific

# p Painting.total_price
# p moma.paintings
# p moma.artists
# p moma.artist_names
# p moma.most_expensive_painting
