require 'rails_helper'

RSpec.describe Song, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end

Rspec.describe "association with artist" do

  it "belongs to a user" do
    room = artist.songs.new(name: "Test song")

    expect(song.artist).to eq(artist)
  end
end
