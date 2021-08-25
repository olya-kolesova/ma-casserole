# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "open-uri"
Booking.destroy_all
User.destroy_all
Chef.destroy_all

puts "Creating user"

user1 = User.create!(
  email: "boris@gmail.com",
  password: "123456",
  first_name: "Bobby",
  last_name: "Smith"
)

puts "Creating chefs"
chef_french = Chef.create!(
  speciality: "French cuisine",
  experience: "Worked mostly as a freelance cook, and was not employed by any particular household",
  user: user1
)
file1 = URI.open('https://res.cloudinary.com/olya-kolesova/image/upload/v1629897927/la-casserole/french0_rtqe9m.jpg')
file2 = URI.open('https://res.cloudinary.com/olya-kolesova/image/upload/v1629897785/french1_j8yixn.jpg')
file3 = URI.open('https://res.cloudinary.com/olya-kolesova/image/upload/v1629897785/french2_anyghd.jpg')
file4 = URI.open('https://res.cloudinary.com/olya-kolesova/image/upload/v1629897784/french3_ndvsv8.jpg')

chef_french.photos.attach(io: file1, filename: '1.jpg', content_type: 'image/jpg')
chef_french.photos.attach(io: file2, filename: '2.jpg', content_type: 'image/jpg')
chef_french.photos.attach(io: file3, filename: '3.jpg', content_type: 'image/jpg')
chef_french.photos.attach(io: file4, filename: '4.jpg', content_type: 'image/jpg')

chef_french.save!


chef_japanese = Chef.create!(
  speciality: "Japanese cuisine",
  experience: "Prepared traditional Japanese sushi rice, chopping, slicing, and filleting various kinds of fish, and placing orders for supplies as needed. Lived and worked in London last 3 years.",
  user: user1
)

file1 = URI.open('https://res.cloudinary.com/olya-kolesova/image/upload/v1629897785/japanese0_tbymvc.jpg')
file2 = URI.open('https://res.cloudinary.com/olya-kolesova/image/upload/v1629897784/japanese1_wrumfj.jpg')
file3 = URI.open('https://res.cloudinary.com/olya-kolesova/image/upload/v1629897784/japanese2_pd9hdt.jpg')
file4 = URI.open('https://res.cloudinary.com/olya-kolesova/image/upload/v1629897784/japanese3_uil5k3.jpg')


chef_japanese.photos.attach(io: file1, filename: '1.jpg', content_type: 'image/jpg')
chef_japanese.photos.attach(io: file2, filename: '2.jpg', content_type: 'image/jpg')
chef_japanese.photos.attach(io: file3, filename: '3.jpg', content_type: 'image/jpg')
chef_japanese.photos.attach(io: file4, filename: '4.jpg', content_type: 'image/jpg')

chef_japanese.save!



chef_chinese = Chef.create!(
  speciality: "Chinese cuisine",
  experience: "Chef and owner of five restaurants. He is the former head chef of the three Michelin star restaurant Le Jardin des Sens in France. He is known for his Octo-philosophy of eight elements which make up his dishes. In 2017, his Michelin 2-star eponymous Restaurant André was named the Best Restaurant in Singapore, and the second-best in Asia by Restaurant magazine",
  user: user1
)

file1 = URI.open('https://res.cloudinary.com/olya-kolesova/image/upload/v1629897785/chinise0_kgvdhl.jpg')
file2 = URI.open('https://res.cloudinary.com/olya-kolesova/image/upload/v1629897787/chinese2_lxu0ay.jpg')
file3 = URI.open('https://res.cloudinary.com/olya-kolesova/image/upload/v1629897787/chinese3_lpkdwi.jpg')
file4 = URI.open('https://res.cloudinary.com/olya-kolesova/image/upload/v1629897787/chinese4_hkhxsr.jpg')

chef_chinese.photos.attach(io: file1, filename: '1.jpg', content_type: 'image/jpg')
chef_chinese.photos.attach(io: file2, filename: '2.jpg', content_type: 'image/jpg')
chef_chinese.photos.attach(io: file3, filename: '3.jpg', content_type: 'image/jpg')
chef_chinese.photos.attach(io: file4, filename: '4.jpg', content_type: 'image/jpg')

chef_chinese.save!



chef_korean = Chef.create!(
  speciality: "Korean cuisine",
  experience: "Gained prominence as the creator of the gourmet Korean-Mexican taco truck Kogi. Choi is a chef who is celebrated for 'food that isn't fancy' and is known as one of the founders of the gourmet food truck movement. In 2019, Choi began presenting a cooking series on Netflix with Jon Favreau titled The Chef Show.",
  user: user1
)

file1 = URI.open('https://res.cloudinary.com/olya-kolesova/image/upload/v1629897785/korean0_gxcaec.jpg')
file2 = URI.open('https://res.cloudinary.com/olya-kolesova/image/upload/v1629897787/korean2_cnnoad.jpg')
file3 = URI.open('https://res.cloudinary.com/olya-kolesova/image/upload/v1629897786/korean3_vwgf81.jpg')
file4 = URI.open('https://res.cloudinary.com/olya-kolesova/image/upload/v1629897786/korean4_flhstr.jpg')

chef_korean.photos.attach(io: file1, filename: '1.jpg', content_type: 'image/jpg')
chef_korean.photos.attach(io: file2, filename: '2.jpg', content_type: 'image/jpg')
chef_korean.photos.attach(io: file3, filename: '3.jpg', content_type: 'image/jpg')
chef_korean.photos.attach(io: file4, filename: '4.jpg', content_type: 'image/jpg')

chef_korean.save!



# chef_indian = Chef.create!(
#   speciality: "Indian cuisine",
#   experience: "Indian chef, restaurateur, cookbook writer, filmmaker and humanitarian. He is one of the judges of Star Plus series MasterChef India.",
#   user: user1
# )

# chef_eastern_european = Chef.create!(
#   speciality: "Eastern-european cuisine",
#   experience: "Armed with the best classical training you could ask for and a repertoire of eastern European recipes most other chefs don’t dabble with makes him one of the UK’s most exciting chefs. He cooks small plates using a wood-fired oven and live fire cooking for just five people at a time, using ingredients exclusively from local farmers with plenty of homemade charcuterie, smoked fish, butter, bread, liqueurs and ferments.",
#   user: user1
# )
