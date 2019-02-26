require 'pry'
require_relative '../app/models/artist.rb'
require_relative '../app/models/gallery.rb'
require_relative '../app/models/painting.rb'

james = Artist.new('James Dorr', 5)
ayana = Artist.new('Ayana', 11)
matt = Artist.new('Matt', 11)
sag = Gallery.new('Spokane Art Gallery', 'Spokane, Washington')
roundiron = ayana.create_painting('Roundiron', 1000000000, sag)
ironflat = james.create_painting('Ironflat', 120, sag)
sag.display_painting(ironflat)
# p "1 - Artist.all = #{Artist.all}"
# p "2 - Painting.all = #{Painting.all}"
# p "3 - ironflat.gallery.name = #{ironflat.gallery.name}"
# p "4 - james.galleries = #{james.galleries}"
# p "5 - james.cities = #{james.cities}"
# p "6 - Artist.total_experience = #{Artist.total_experience}"
# p "7 - Artist.most_prolific.name = #{Artist.most_prolific.name}"
# p "8 - Painting.total_price = #{Painting.total_price}"
# # p "9 - sag.paintings = #{sag.paintings}"
# # p "10- sag.artists = #{sag.artists}"
# # p "9 - sag.paintings = #{sag.paintings}"
# # p "10- sag.artists = #{sag.artists}"
# p "11- sag.artist_names = #{sag.artist_names}"
# p "12- sag.most_expensive_painting = #{sag.most_expensive_painting.name}"
