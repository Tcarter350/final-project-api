["users", "posts", "suggestions", "categories"].each do |table_name|
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
  image: "https://s3-eu-west-1.amazonaws.com/wdi-grain-project3/_MG_6310.jpg"
})

tobias = User.create!({
  username: "tobiast",
  email: "tobiast@ga.co",
  password: "password",
  password_confirmation: "password",
  image: ""
})

pete = User.create!({
  username: "pete.makes",
  email: "pete@ga.co",
  password: "password",
  password_confirmation: "password",
  image: ""
})

nancy = User.create!({
  username: "nancyplants",
  email: "nancy@ga.co",
  password: "password",
  password_confirmation: "password",
  image: ""
})

post1 = Post.create!({
  user_id: thea.id,
  image: "https://67.media.tumblr.com/8de75619b96f82c583c0daeaa7d4b24d/tumblr_ngggiwauH91sbxtlro1_500.jpg",
  caption: "slowly turning the bathroom into a jungle.",
  category_ids: [1,2]
})

post2 = Post.create!({
  user_id: thea.id,
  image: "https://eigenhandig1.files.wordpress.com/2015/07/3.jpg",
  caption: "making the most of the nice weather and working on the outdoor space today. it's coming along nicely"
})

post3 = Post.create!({
  user_id: thea.id,
  image: "https://65.media.tumblr.com/b9b2d31620277f06f6218f657a33f9eb/tumblr_nc9485oAHk1sxgyu0o1_500.jpg",
  caption: "working on the little touches around the house today. i love this design."
})

post4 = Post.create!({
  user_id: tobias.id,
  image: "https://fantasticfrank.files.wordpress.com/2015/05/livingroom-by-emily-laye-and-emma-wallmc3a9n-for-fantastic-frank.jpg",
  caption: "light space"
})

post5 = Post.create!({
  user_id: pete.id,
  image: "https://s-media-cache-ak0.pinimg.com/originals/55/59/4e/55594e6509854229b3d00adbd9f87d12.jpg",
  caption: "we've been making some changes to the courtyard recently. we've built up quite a collection of plants. here's to many, many more."
})

post6 = Post.create!({
  user_id: nancy.id,
  image: "http://inhabitcdn.jvlmdtj03mlxomgybgxoj15v1tgbs3nvi.netdna-cdn.com/wp-content/uploads/2016/03/image-14.jpg",
  caption: "Sundays are best spent at home. The cat decided to get involved on this one."
})

post7 = Post.create!({
  user_id: thea.id,
  image: "http://newdarlings.com/wp-content/uploads/2016/06/NewDarlings-Movado-9-1024x683.jpg",
  caption: "some new additions to the bedroom. picked up this lamp and table at a car boot sale"
})

post8 = Post.create!({
  user_id: thea.id,
  image: "https://lh3.googleusercontent.com/-bq0d2pYQRj0/VxyBa9bxpzI/AAAAAAAACbY/8bL0nPe3xYo0klqnRuqMq1XR6DSb7rIJA/w506-h750/tumblr_nskegjsT9d1r4gct3o1_1280.jpg",
  caption: "bringing the outside in"
})

post9 = Post.create!({
  user_id: pete.id,
  image: "http://newdarlings.com/wp-content/uploads/2016/06/NewDarlings-UO-PlantsFeature-28-1024x683.jpg",
  caption: "finally found a way of fixing the bikes to the wall without damaging the paintwork"
})

post10 = Post.create!({
  user_id: pete.id,
  image: "https://s-media-cache-ak0.pinimg.com/736x/02/a4/50/02a45002f72cdfb445dce6d28cb8c13d.jpg",
  caption: "glass teapot"
})

post11 = Post.create!({
  user_id: tobias.id,
  image: "http://roomed.nl/wp-content/uploads/2016/07/b9f84e6992593c151c96f8f8bbfa9885.jpg",
  caption: "here's a picture i took of the corner of the riad i was staying in during my time in morrocco"
})

post12 = Post.create!({
  user_id: nancy.id,
  image: "http://www.rogerallen.net/blog/wp-content/uploads/2011/09/Abigail-Edwards_Seascape_Wallpaper_05.jpg",
  caption: "bedside table details"
})

post13 = Post.create!({
  user_id: thea.id,
  image: "https://s-media-cache-ak0.pinimg.com/originals/f4/34/2d/f4342da357f9e8c147fffd88075468b0.jpg",
  caption: "an earthy japanese home"
})

post14 = Post.create!({
  user_id: tobias.id,
  image: "https://img1.etsystatic.com/136/0/10879594/il_fullxfull.904393111_9v22.jpg",
  caption: "here is a shelf i made for my kid's bedroom"
})

post15 = Post.create!({
  user_id: thea.id,
  image: "http://mylistoflists.com/wp-content/uploads/2015/04/shelves-14.png",
  caption: "heres a shelf i made earlier..."
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
