require_relative 'painting.rb'
require_relative 'artist.rb'

class Gallery < Painting

  attr_reader :name, :city

  @@all = []

  def initialize(name, city)
    @name = name
    @city = city
    @@all << self
  end

  def self.all
    @@all
  end

  def self.paintings
    p Painting.all
  end

  def self.artist
    p Artist.all
  end

  def self.artist_names
    Artist.all.map do |artist|
      artist.name
    end
  end

  # def self.most_expensive_painting
  #   # Painting.total_price
  #   # Painting.all.each do |painting|
  #   #   p painting.price
  #   # end
  # end

end

Painting.new("Mona Lisa", 2000)
Painting.new("George", 1000)
Painting.new("Buck", 3000)
Artist.new("Vytautas", 5)
Gallery.new("MoMa", "New York")

# p Artist.paintings
# p Artist.paintings
# p Gallery.paintings
# p Gallery.artist_names
# Gallery.most_expensive_painting
# p Painting.total_price
