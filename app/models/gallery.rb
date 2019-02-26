require 'pry'

class Gallery

  @@all = []

  attr_reader :name, :city

  def initialize(name, city)
    @name = name
    @city = city
    @@all << self
  end

  def self.all
    @@all
  end

  def paintings
    Painting.all.select {|painting| painting.gallery == self}
  end

  def artists
    paintings.map {|painting| painting.name}
  end

  def artist_names
    paintings.map {|painting| painting.gallery}
  end

  def most_expensive_painting
    checker = nil

    Painting.all.select do |painting|
      painting.find do |title, price|
        if checker == nil || price > checker
          checker = price
        end
      end
    end
  end

end
