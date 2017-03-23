Song.delete_all
Artist.delete_all

artist1 = Artist.create!(name: "Kraantje Pappie",
image: "http://res.cloudinary.com/dqaserzum/image/upload/v1489853383/Kraantje-Pappie-Pers-2-kopie_csprr9.jpg")
artist2 = Artist.create!(name: "The Bloody Beetroots",
image: "http://res.cloudinary.com/dqaserzum/image/upload/v1489853576/the-bloody-beetrootsarticle_ee1xyd.jpg")
artist3 = Artist.create!(name: "Parov Stelar",
image: "http://res.cloudinary.com/dqaserzum/image/upload/v1489853715/Parov-Stelar_Sappert004-web_pbqgqz.jpg")
artist4 = Artist.create!(name: "Tame Impala",
image: "http://res.cloudinary.com/dqaserzum/image/upload/v1489854121/Tame-Impala_s04ini.jpg")

Song.create!(name: "De Manier", artist: artist1)
Song.create!(name: "Feesttent", artist: artist1)
Song.create!(name: "Pompen", artist: artist1)

Song.create!(name: "Rocksteady", artist: artist2)
Song.create!(name: "Chronicles of a Fallen Love", artist: artist2)

Song.create!(name: "All Night", artist: artist3)
Song.create!(name: "Booty Swing", artist: artist3)
Song.create!(name: "Catgroove", artist: artist3)

Song.create!(name: "The Less I Know the Better", artist: artist4)
Song.create!(name: "Cause I'm a Man", artist: artist4)
