class Artist

  attr_reader :name, :years_experience

  @@all = []
  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    @@all << self
  end



      #Returns an `array` of .all the artists
      artist.name = name

      # Returns an `array` all the #paintings by an artist


      # Returns an `array` of all the #galleries that an artist has paintings in

      #Return an `array` of all #cities that an artist has paintings in


    # Returns an `integer` that is the .total_experience of all artists

      #`Artist.most_prolific`
      # Returns an `instance` of the artist with the highest amount of paintings per year of experience.

    #`Artist#create_painting`
      # Given the arguments of `title`, `price` and `gallery`, creates a new painting belonging to that artist


end
