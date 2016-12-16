["users", "posts", "suggestions", "categories", "categories_posts"].each do |table_name|
  ActiveRecord::Base.connection.execute("TRUNCATE #{table_name} RESTART IDENTITY CASCADE")
end

cat1 = Category.create!({
  name: "Interior"
})

cat2 = Category.create!({
  name: "Exterior"
})

cat3 = Category.create!({
name: "Detail"
})

cat4 = Category.create!({
  name: "Homemade"
})

thea = User.create!({
  username: "Thea",
  email: "theacarter@ga.co",
  password: "password",
  password_confirmation: "password",
  image: File.open(File.join(Rails.root, "db/images/prof.jpg")),
})

tobias = User.create!({
  username: "tobiast",
  email: "tobiast@ga.co",
  password: "password",
  password_confirmation: "password",
  image: File.open(File.join(Rails.root, "db/images/tobias.jpg")),
})

pete = User.create!({
  username: "pete.makes",
  email: "pete@ga.co",
  password: "password",
  password_confirmation: "password",
  image: File.open(File.join(Rails.root, "db/images/tobias.jpg")),
})

nancy = User.create!({
  username: "nancyplants",
  email: "nancy@ga.co",
  password: "password",
  password_confirmation: "password",
  image: File.open(File.join(Rails.root, "db/images/nancy.jpg")),
})

post1 = Post.create!({
  user_id: thea.id,
  image: File.open(File.join(Rails.root, "db/images/bed_shelf.png")),
  caption: "I sourced this shelf a while ago but couldn't work out what I wanted to do with it. I finally had time to work on a bit of project and i'm really pleased with the results. ",
  category_ids: [4]
})

post2 = Post.create!({
  user_id: pete.id,
  image: File.open(File.join(Rails.root, "db/images/kettle.jpg")),
  caption: "This is my favourite item i've ever owned, ever. I think it's a good investment piece as it will go in literally any kitchen! I'd reccomend cleaning it regularly as it does tend to get water stains. My kitchen has quite an industrial feel but with a few vintage touches to give it a bit more of a personal feel.",
  category_ids: [3]
})

post3 = Post.create!({
  user_id: thea.id,
  image: File.open(File.join(Rails.root, "db/images/light_outdoors.jpg")),
  caption: "making the most of the nice weather and working on the outdoor space today. it's coming along nicely",
  category_ids: [2,4]
})

post4 = Post.create!({
  user_id: thea.id,
  image: File.open(File.join(Rails.root, "db/images/lemon.jpg")),
  caption: "working on the little touches around the house today. i love these colours.",
  category_ids: [3]
})

post5 = Post.create!({
  user_id: thea.id,
  image: File.open(File.join(Rails.root, "db/images/plant_house.jpg")),
  caption: "bringing the outside in",
  category_ids: [1,2]
})

post6 = Post.create!({
  user_id: thea.id,
  image: File.open(File.join(Rails.root, "db/images/green_bath.jpg")),
  caption: "slowly turning the bathroom into a jungle.",
  category_ids: [1,2]
})

post7 = Post.create!({
  user_id: pete.id,
  image: File.open(File.join(Rails.root, "db/images/back_plants.jpg")),
  caption: "we've been making some changes to the courtyard recently. we've built up quite a collection of plants. here's to many, many more.",
  category_ids: [2,3]
})

post8 = Post.create!({
  user_id: pete.id,
  image: File.open(File.join(Rails.root, "db/images/chopping_board.jpg")),
  caption: "a little project i've been working on...",
  category_ids: [4,3]
})


post9 = Post.create!({
  user_id: tobias.id,
  image: File.open(File.join(Rails.root, "db/images/living_space.jpg")),
  caption: "light space",
  category_ids: [1,3]
})

post10 = Post.create!({
  user_id: nancy.id,
  image: File.open(File.join(Rails.root, "db/images/cat.jpg")),
  caption: "Sundays are best spent at home. The cat decided to get involved on this one.",
  category_ids: [1,3]
})

post11 = Post.create!({
  user_id: thea.id,
  image: File.open(File.join(Rails.root, "db/images/bedside.jpg")),
  caption: "some new additions to the bedroom. picked up this lamp and table at a car boot sale",
  category_ids: [3,4]
})

post12 = Post.create!({
  user_id: tobias.id,
  image: File.open(File.join(Rails.root, "db/images/shelf.jpg")),
  caption: "here is a shelf i made for my kid's bedroom",
  category_ids: [3,4]
})

post13 = Post.create!({
  user_id: pete.id,
  image: File.open(File.join(Rails.root, "db/images/bikewall.jpg")),
  caption: "finally found a way of fixing the bikes to the wall without damaging the paintwork",
  category_ids: [1,4]

})

post14 = Post.create!({
  user_id: tobias.id,
  image: File.open(File.join(Rails.root, "db/images/woodhouse.jpg")),
  caption: "This little woodhouse releases wood-burning-pine scented incense into the air- just close your eyes and imagine you're at a ski resort in Vermont!",
  category_ids: [3,4]
})

post15 = Post.create!({
  user_id: nancy.id,
  image: File.open(File.join(Rails.root, "db/images/faces.jpg")),
  caption: "A friend of mine made this for me!",
  category_ids: [1,3,4]
})

post16 = Post.create!({
  user_id: thea.id,
  image: File.open(File.join(Rails.root, "db/images/treehouse.jpg")),
  caption: "I was completely smitten after staying in this house on my visit to Japan. It's available to rent via Air Bnb. I love the combination of colours and textures and greenery- it has the feel of a treehouse",
  category_ids: [1,3]
})



sug1 = Suggestion.create!({
  post_id: post1.id,
  image: File.open(File.join(Rails.root, "db/images/tumbler.jpeg")),
  link: "http://www.johnlewis.com/john-lewis-barrel-tumbler-clear/p2919130",
  price: "2.50"
})

sug2 = Suggestion.create!({
  post_id: post1.id,
  image: File.open(File.join(Rails.root, "db/images/bulb.jpg")),
  link: "https://www.etsy.com/uk/listing/219208136/industrial-pendant-light-galvanized?ga_order=most_relevant&ga_search_type=all&ga_view_type=gallery&ga_search_query=bare%20bulb%20pendant&ref=sr_gallery_20",
  price: "58"
})

sug3 = Suggestion.create!({
  post_id: post1.id,
  image: File.open(File.join(Rails.root, "db/images/wood_shelf.jpg")),
  link: "https://www.etsy.com/uk/listing/480292273/handcrafted-rustic-reclaimed-chunky?ref=related-0",
  price: "25"
})

sug4 = Suggestion.create!({
  post_id: post16.id,
  image: File.open(File.join(Rails.root, "db/images/cushion.jpg")),
  link: "https://www.etsy.com/uk/listing/458435778/indigo-shibori-pillow-cushion-cover-20-x?ga_order=most_relevant&ga_search_type=all&ga_view_type=gallery&ga_search_query=tribal%20pillow&ref=sr_gallery_5",
  price: "38"
})



puts "Seeds file has finished, time for tea!"
