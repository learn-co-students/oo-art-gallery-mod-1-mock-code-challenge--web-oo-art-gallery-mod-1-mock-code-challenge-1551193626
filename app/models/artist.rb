class Artist

  attr_reader :name, :years_exp
  @@artists = []

  def initialize(name, years_exp)
    @name = name
    @years_exp = years_exp
    @@artists << self
  end

  def self.all
    @@artists
  end

  def paintings
    Paintings.all.select do |painting|
      painting.artist == self
    end
  end

  def galleries
    artist_galleries = []

    artist_galleries = paintings.map do |painting|
      artist_galleries << painting.gallery
    end

    artist_galleries.uniq!
    return artist_galleries
  end

  def cities
    gallery_cities = galleries.map do |gallery|
      gallery.city
    end
    gallery_cities.uniq!
  end

  def self.total_experience
    total_exp = 0
    self.all.map do |artist|
      total_exp += artist.years_exp
    end
  end

  #incomplete
  def self.most_prolific
    most_prolific_num = 0
    most_prolific_name = ""
    self.all.map do |artist|
      if artist.paintings.
    end
  end

  def create_painting(title, price, gallery)
    new_painting = Painting.new(title, price, Gallery.new(gallery, ""), self)
    Painting.all << new_painting
  end

end


=begin
* `Artist.all`
  * Returns an `array` of all the artists
IMP:

* `Artist#paintings`
  * Returns an `array` all the paintings by an artist
IMP:

* `Artist#galleries`
  * Returns an `array` of all the galleries that an artist has paintings in
IMP:

* `Artist#cities`
  * Return an `array` of all cities that an artist has paintings in
IMP:

* `Artist.total_experience`
  * Returns an `integer` that is the total years of experience of all artists
IMP:

* `Artist.most_prolific`
  * Returns an `instance` of the artist with the highest amount of paintings per year of experience.
IMP:

* `Artist#create_painting`
  * Given the arguments of `title`, `price` and `gallery`, creates a new painting belonging to that artist
IMP:

=end
