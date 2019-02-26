require_relative 'artist.rb'

class Painting < Artist

  attr_reader :title, :price

  @@all = []

  def initialize(title, price)
    @title = title
    @price = price
    @@all << self
  end

  def self.all
    @@all
  end

  def self.total_price
    @total_price = 0
    @@all.each do |paintings|
      @total_price += paintings.price
    end
    @total_price
  end

end

# p Painting.new("Mona Lisa", 2000)
# p Painting.new("George", 1000)
# p Painting.new("Buck", 3000)
# # p Painting.all
# p Painting.total_price
