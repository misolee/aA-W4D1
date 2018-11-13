# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all 

user1 = User.create(username: 'kuma')
user2 = User.create(username: 'smile')
user3 = User.create(username: 'choiboi')

Artwork.destroy_all 

artwork1 = Artwork.create(title: 'Grave of Fireflies', image_url: 'https://i.ytimg.com/vi/vldWhL5JQxg/hqdefault.jpg', artist_id: user1.id )
artwork2 = Artwork.create(title: 'Smiley', image_url: 'https://media.defense.gov/2018/Jul/13/2001942129/-1/-1/0/180711-F-XX999-0001.JPG', artist_id: user2.id )
artwork3 = Artwork.create(title: 'ChoiBoi', image_url: 'https://s3-us-west-2.amazonaws.com/aa-progress-tracker/students/avatars/000/003/094/medium/Josh_Choi.jpg?1540313225', artist_id: user3.id )

ArtworkShare.destroy_all 
artworkshare1 = ArtworkShare.create(artwork_id: artwork1.id, viewer_id: user2.id)
artworkshare2 = ArtworkShare.create(artwork_id: artwork3.id, viewer_id: user1.id)
