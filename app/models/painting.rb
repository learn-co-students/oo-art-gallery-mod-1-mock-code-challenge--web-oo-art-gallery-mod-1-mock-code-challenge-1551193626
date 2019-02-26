require 'pry'

class Painting

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
    total_price = 0
    Painting.all.each do |painting|
      painting.select do |title, price|
        total_price += price
      end
    end
    total_price
  end

end
