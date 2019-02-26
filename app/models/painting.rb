require 'pry'
class Painting

  attr_reader :title, :price
  attr_accessor :artist, :gallery

  @@all = []

  def initialize(title, price)
    @title = title
    @price = price
    @gallery = gallery
    @@all.push(self)
  end

  def self.all
    @@all
  end

  def self.total_price
    total = 0
    self.all.each {|painting|
      total += painting.price
    }
    return total
  end

end
