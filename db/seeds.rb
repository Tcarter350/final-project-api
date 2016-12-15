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
  caption: "heres a shelf i made earlier..."
})

post2 = Post.create!({
  user_id: pete.id,
  image: File.open(File.join(Rails.root, "db/images/kettle.jpg")),
  caption: "glass teapot"
})

post3 = Post.create!({
  user_id: thea.id,
  image: File.open(File.join(Rails.root, "db/images/light_outdoors.jpg")),
  caption: "making the most of the nice weather and working on the outdoor space today. it's coming along nicely"
})

post4 = Post.create!({
  user_id: thea.id,
  image: File.open(File.join(Rails.root, "db/images/lemon.jpg")),
  caption: "working on the little touches around the house today. i love these colours."
})

post5 = Post.create!({
  user_id: thea.id,
  image: File.open(File.join(Rails.root, "db/images/plant_house.jpg")),
  caption: "bringing the outside in"
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
  caption: "we've been making some changes to the courtyard recently. we've built up quite a collection of plants. here's to many, many more."
})

post8 = Post.create!({
  user_id: pete.id,
  image: File.open(File.join(Rails.root, "db/images/chopping_board.jpg")),
  caption: "a little project i've been working on..."
})


post9 = Post.create!({
  user_id: tobias.id,
  image: File.open(File.join(Rails.root, "db/images/living_space.jpg")),
  caption: "light space"
})

post10 = Post.create!({
  user_id: nancy.id,
  image: File.open(File.join(Rails.root, "db/images/cat.jpg")),
  caption: "Sundays are best spent at home. The cat decided to get involved on this one."
})

post11 = Post.create!({
  user_id: thea.id,
  image: File.open(File.join(Rails.root, "db/images/bedside.jpg")),
  caption: "some new additions to the bedroom. picked up this lamp and table at a car boot sale"
})

post12 = Post.create!({
  user_id: tobias.id,
  image: File.open(File.join(Rails.root, "db/images/shelf.jpg")),
  caption: "here is a shelf i made for my kid's bedroom"
})

post13 = Post.create!({
  user_id: pete.id,
  image: File.open(File.join(Rails.root, "db/images/bikewall.jpg")),
  caption: "finally found a way of fixing the bikes to the wall without damaging the paintwork"
})

post14 = Post.create!({
  user_id: tobias.id,
  image: File.open(File.join(Rails.root, "db/images/woodhouse.jpg")),
  caption: "This little woodhouse releases wood-burning-pine scented incense into the air- just close your eyes and imagine you're at a ski resort in Vermont!"
})

post15 = Post.create!({
  user_id: nancy.id,
  image: File.open(File.join(Rails.root, "db/images/paper_wall.jpg")),
  caption: "bedside table details"
})

post16 = Post.create!({
  user_id: thea.id,
  image: File.open(File.join(Rails.root, "db/images/treehouse.jpg")),
  caption: "an earthy japanese home"
})



sug1 = Suggestion.create!({
  post_id: post4.id,
  image: "http://fillmurray.com300/200",
  link: "amazon",
  price: "£25"
})

sug2 = Suggestion.create!({
  post_id: post4.id,
  image: "http://fillmurray.com300/200",
  link: "amazon",
  price: "£25"
})

sug3 = Suggestion.create!({
  post_id: post4.id,
  image: "http://fillmurray.com300/200",
  link: "amazon",
  price: "£25"
})

sug4 = Suggestion.create!({
  post_id: post4.id,
  image: "http://fillmurray.com300/200",
  link: "amazon",
  price: "£25"
})

sug5 = Suggestion.create!({
  post_id: post4.id,
  image: "http://fillmurray.com300/200",
  link: "amazon",
  price: "£25"
})

sug6 = Suggestion.create!({
  post_id: post4.id,
  image: "http://fillmurray.com300/200",
  link: "amazon",
  price: "£25"
})

sug7 = Suggestion.create!({
  post_id: post4.id,
  image: "http://fillmurray.com300/200",
  link: "amazon",
  price: "£25"
})

sug8 = Suggestion.create!({
  post_id: post4.id,
  image: "http://fillmurray.com300/200",
  link: "amazon",
  price: "£25"
})

sug9 = Suggestion.create!({
  post_id: post4.id,
  image: "http://fillmurray.com300/200",
  link: "amazon",
  price: "£25"
})

sug10 = Suggestion.create!({
  post_id: post4.id,
  image: "http://fillmurray.com300/200",
  link: "amazon",
  price: "£25"
})

sug11 = Suggestion.create!({
  post_id: post4.id,
  image: "http://fillmurray.com300/200",
  link: "amazon",
  price: "£25"
})

sug12 = Suggestion.create!({
  post_id: post4.id,
  image: "http://fillmurray.com300/200",
  link: "amazon",
  price: "£25"
})



puts "Seeds file has finished, time for tea!"
