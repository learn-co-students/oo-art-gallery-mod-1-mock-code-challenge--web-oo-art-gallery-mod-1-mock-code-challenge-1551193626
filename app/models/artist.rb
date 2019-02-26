#MANY 

class Artist

	@@all = []

	  attr_reader :name, :years_experience, :paintings

	  def initialize(name, years_experience)
	    @name = name
	    @years_experience = years_experience
	    @paintings = []
	    @@all << self
	  end

	def self.all 
		@@all 
	end


	def create_painting(title, price, gallery)
		new_painting = Painting.new(title, price) 
		painting.artist = self.name
		@paintings << new_painting
	end




end
