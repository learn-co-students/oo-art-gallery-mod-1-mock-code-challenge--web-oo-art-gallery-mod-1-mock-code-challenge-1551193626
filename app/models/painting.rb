class Painting

  attr_reader :title, :price

  @@all = []

  def initialize(title, price)
    @title = title
    @price = price
    @@all << self

  end

  #returns array of all the paintings
  def self.all
      @title << @@all
  end

  #returns and integer that is the total price
  #of all paintings
  def self.total_price
    @price << @@all
  end

end
