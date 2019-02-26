class Artist

  attr_reader :name, :years_experience

  @@all = []
  @@total_years_experience = 0


  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    @@total_years_experience += years_experience
    @@all << self
  end

  def self.all
    @@all
  end

  def paintings
    all.select do |artist_instance|
      artist_instance.name == self
    end
    # Painting.all.select do ?
    #return an array of all paintings by an artist
    #where does this paintings array live? Instance of an artist
  end

  def galleries
    #return an array of all galleries that an artist has paintings in
    #artist instances do not have gallery...
    Painting.all.select do |painting_instance|
      # instances have title, price, gallery?
    end

  end

  def cities
    #return an array of all cities the artist has a painting in
  end

  def self.total_experience
    @@total_years_experience
  end

  def self.most_prolific
    #returns an INSTANCE of the artist with the highest amount of paintings per year of experience
    # paintings / year
    #map ?

  end

  def create_painting(title, price, gallery)
    new_painting = Painting.new(title, price)
    Painting.all << self
    #new_painting.artist = self
    #gallery = Gallery.new??????



    #create a new painting belonging to this artist
  end


end
