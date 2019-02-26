class Painting

  attr_reader :title, :price
  attr_accessor :artist, :gallery ##### I want to check if this is appropriate. Can I avoid accessor?

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
    @@all.sum {|painting_inst| painting_inst.price}
  end

end
