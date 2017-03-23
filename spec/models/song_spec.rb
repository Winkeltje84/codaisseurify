require 'rails_helper'

RSpec.describe "Association with artist" do

  it "belongs to an artist" do
    artist = build(:artist, name: "Teddie", image: "www.mooiefoto.nl/1")
    song = build(:song, name: "Test song", artist: artist)

    expect(song.artist).to eq(artist)
  end
end
