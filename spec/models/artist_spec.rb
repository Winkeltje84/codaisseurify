require 'rails_helper'

RSpec.describe Artist, type: :model do

  describe "When deleting an artist" do

    it "deletes only the songs of that artist and not others" do
      artist = build(:artist, name: "Teddie", image: "www.mooiefoto.nl/1")
      other_artist = build(:artist, name: "Other Teddie", image: "www.mooiefoto.nl/2")
      song_artist = build(:song, name: "Artist song", artist: artist)
      song_other_artist = build(:song, name: "Other artist song", artist: other_artist)

      expect {artist.destroy}.to delete(song_artist)
      expect {artist.destroy}.to !delete(other_artist_song)
    end
  end

end
