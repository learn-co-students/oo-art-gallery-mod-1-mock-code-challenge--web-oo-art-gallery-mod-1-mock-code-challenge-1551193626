class Gallery

  attr_reader :name, :city
  attr_accessor :paintings

  @@all = []

  def initialize(name, city)
    @name = name
    @city = city
    @@all << self
  end

  def self.all
    @@all
  end

  def paintings
    Paintings.all.select do |painting|
      painting.gallery == self
    end
  end

end
