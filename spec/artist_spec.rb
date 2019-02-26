require_relative '../app/models/artist.rb'
require_relative '../app/models/gallery.rb'
describe "artist" do
  let(:picasso) { Artist.new("Picasso", 20) }
  let(:josh) { Artist.new("Josh", 10) }
  let(:moma) { Gallery.new("Museum of Modern Art", "New York") }


  it "returns all the artists" do
    expect(Artist.all).to eql([picasso, josh])
  end

  it "returns the total amount of experience" do
    expect(Artist.total_experience).to eq(30)
  end

  it "returns all the artist's paintings" do
    picasso.create_painting("Girl before a Mirror", 1_000_000, moma)
    picasso.create_painting("The Three Dancers", 3_000_000, moma)
    expect(picasso.paintings).not_to be_empty
  end

  it "returns all the artist's cities with paintings" do
    picasso.create_painting("The Three Dancers", 3_000_000, moma)
    expect(picasso.cities).to eq(["New York"])
  end


end