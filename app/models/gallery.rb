#MANY 

class Gallery

	@@all = []

  attr_reader :name, :city, :paintings

  def initialize(name, city)
    @name = name
    @city = city
    @paintings = []
    @@all << self
  end

 def self.all 
 	@@all 
 end



end
