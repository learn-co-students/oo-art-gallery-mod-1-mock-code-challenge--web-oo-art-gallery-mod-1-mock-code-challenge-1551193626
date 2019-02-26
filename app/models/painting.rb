class Painting

  attr_reader :title, :price
  attr_accessor :gallery, :artist

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
    Painting.all.map do |painting|
      painting.price
    end.inject(0){|sum,x| sum + x }
    # returns int that is sum of all paintings prices
  end

end
