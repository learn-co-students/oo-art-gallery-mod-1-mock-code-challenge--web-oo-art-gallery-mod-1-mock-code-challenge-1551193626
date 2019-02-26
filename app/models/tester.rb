require "pry"
require_relative "artist"
require_relative "painting"
require_relative "gallery"

van_gogh = Artist.new("Vincent Van Gogh", 25)

angelo = Artist.new("Michelangelo", 50)

leonardo = Artist.new("Leonardo Da Vinci", 20)

louvre = Gallery.new("Louvre Museum", "Paris")

national_gallery = Gallery.new("The National Gallery", "London")

metropolitan = Gallery.new("The Metropolitan", "NYC")

painting_1 = Painting.new("Starry Night", 10, national_gallery, van_gogh)

painting_2 = Painting.new("The Fountain", 20, metropolitan, leonardo)

painting_3 = Painting.new("Scream", 5, louvre, angelo)

painting_4 = Painting.new("Scream_again", 23, louvre, angelo)

painting_5 = Painting.new("Spooky Painting", 25, louvre, angelo)

painting_6 = Painting.new("Scream_once_more", 20, louvre, angelo)

painting_7 = Painting.new("Bruh Stop SCreaming", 1000, louvre,leonardo)

# binding.pry
# false
