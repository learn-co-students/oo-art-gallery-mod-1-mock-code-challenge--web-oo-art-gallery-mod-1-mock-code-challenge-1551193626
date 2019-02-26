require_relative '../app/models/gallery.rb'
describe "gallery" do
  it "Returns all of the galleries" do
    expect(Gallery.all).not_to be_empty
  end
end