class Painting

  attr_accessor  :gallery,:title, :price

  @@all = []

  def initialize(title, price,gallery)
    @title = title
    @price = price
    @gallery = gallery
    @@all << self
  end



  def self.all
    @@all #Returns an `array` of all the paintings
  end


  def self.total_price
    self.price #makes sure that this is an integer
  end
















end
