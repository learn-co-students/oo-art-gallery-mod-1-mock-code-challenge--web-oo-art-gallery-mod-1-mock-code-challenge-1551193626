class Painting

  attr_reader :title, :price

  @@all = []
  @@total_price = 0

  def initialize(title, price)
    @title = title
    @price = price
    @@total_price += price
    @@all << self
  end

  def self.all
    @@all
  end

  def self.total_price
    @@total_price
  end

end
