# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

coldplay = Artist.create( { name: 'Coldplay', image: open('https://www.coldplaying.com/wp-content/uploads/2015/11/dgsdfsg.jpg') } )
adele = Artist.create( { name: 'Adele', image: open('http://www.billboard.com/files/styles/article_main_image/public/media/Adele-2015-close-up-XL_Columbia-billboard-650.jpg') } )
ed_sheeran = Artist.create( { name: 'Ed Sheeran', image: open('http://blogs-images.forbes.com/zackomalleygreenburg/files/2015/01/Sheeran-e1420485651331.jpg') } )

Song.create([
  { name: 'Yellow', artist: coldplay },
  { name: 'The Scientist', artist: coldplay },
  { name: 'Clocks', artist: coldplay },
  { name: 'Fix You', artist: coldplay },
  { name: 'Viva La Vida', artist: coldplay }
])
Song.create([
  { name: 'Set Fire To The Rain', artist: adele },
  { name: 'Rolling In The Deep', artist: adele },
  { name: 'Hello', artist: adele }
])
Song.create([
  { name: 'Thinking Out Loud', artist: ed_sheeran },
  { name: 'Photograph', artist: ed_sheeran },
  { name: 'I See Fire', artist: ed_sheeran },
  { name: 'Lego House', artist: ed_sheeran }
])
