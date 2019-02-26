class Artist

  attr_reader :name, :years_experience
  @@all = []

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    @@all << self
  end

  def paintings
    Painting.all.select do |painting|
      painting.artist == self.name
  end

  def galleries
    self.paintings.map do |painting|
      painting.gallery
  end

  def cities
    final_arr = []
    Gallery.all.each do |gallery|
      if self.galleries.include?(gallery.name)
        final_arr << gallery.city
      end
    end
    return final_arr
  end

  def total_experience
    sum = 0
    @@all.each do |arist_arr|
      artist_arr.each do |name, years|
        sum += years
    end
    return sum
  end

  def most_prolific
    nums = {}
    @@all.each do |self|
      nums[self.name] = self.paintings.length / self.years_experience
    end
    @@all.select do |

  end

  def create_painting(title, price, gallery)
    Painting.new(title, price, self, gallery)
  end
end
