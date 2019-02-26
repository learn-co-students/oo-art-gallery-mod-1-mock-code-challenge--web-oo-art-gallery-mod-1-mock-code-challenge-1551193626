require 'pry'

class Artist

  @@all = []

  attr_reader :name, :years_experience

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    @@all << self
  end

  def self.all
    @@all
  end

  def create_painting(title, price, gallery)
    gallery = Painting.new(title, price)
  end

  def paintings
    Painting.all.select {|painting| painting.artist == self}
  end

  def galleries
    paintings.map {|painting| painting.gallery.name}
  end

  def cities
    paintings.map {|painting| painting.gallery.city}
  end

  def self.total_experience
    new_total = 0
    Artist.all.each do |artist|
      artist.select do |name, exp|
        new_total += exp
      end
    end
    new_total
  end

end
