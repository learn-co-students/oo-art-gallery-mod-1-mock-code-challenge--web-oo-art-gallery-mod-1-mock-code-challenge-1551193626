class Artist

  attr_reader :name, :years_experience
  @@all = []

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
  end

  def self.all
  	@@all
  end

  def paintings #Returns an `array` all the paintings by an artist  
  	Painting.all.select do |x|
  	x.artist == self
    end

  end

  def galleries #Returns an `array` of all the galleries that an artist has paintings in
	matched =Painting.all.select do |x| x.artist == self
end

outArray = []
outArray << matched[0].gallery
outArray

  end

  def cities #Return an `array` of all cities that an artist has paintings in
  		 	Painting.all.select do |x|
  	 		binding.pry
  	x.artist == self
    end
  end

  def total_experience #Returns an `integer` that is the total years of experience of all artists
  end

  def most_prolific #Returns an `instance` of the artist with the highest amount of paintings per year of experience.
  end

  def create_painting(title,price,gallery) #Given the arguments of `title`, `price` and `gallery`, creates a new painting belonging to that artist
  	Painting.new(title,price,gallery, self)
  end


end
