require_relative '../app/models/painting.rb'
describe "painting" do

  it "returns all of the paintings" do
    expect(Painting.all).not_to be_empty
  end

  it "returns the total price of all the paintings" do
    expect(Painting.total_price).to eq(7_000_000)
  end

end