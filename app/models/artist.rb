require_relative './painting.rb'
require_relative './artist.rb'

class Artist

  attr_reader :name, :years_experience

  @@all = []

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    @@all << self
  end

  def self.all
    @@all
  end

  def cities
    Gallery.all.select { |gallery| gallery.artists.include?(self) }.map(&:city).uniq
  end

  def create_painting(title, price, gallery)
    p = Painting.new(self, title, price)
    p.gallery = gallery
  end

  def paintings
    Painting.all.select {|painting| painting.artist == self}
  end

  def galleries

  end

  def self.total_experience
    all.map(&:years_experience).sum
  end

end