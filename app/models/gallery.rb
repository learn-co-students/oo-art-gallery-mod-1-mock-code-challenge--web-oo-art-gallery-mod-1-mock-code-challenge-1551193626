require_relative './painting.rb'
class Gallery

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

  def paintings
    Painting.all.select { |painting| painting.gallery == self}
  end

  def artists
    paintings.map(&:artist).uniq
  end

  def artist_names
    artists.map(&:name)
  end

end
