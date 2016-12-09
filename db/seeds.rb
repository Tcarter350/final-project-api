["users", "posts"].each do |table_name|
  ActiveRecord::Base.connection.execute("TRUNCATE #{table_name} RESTART IDENTITY CASCADE")
end

mike = User.create!({
  username: "mickyginger",
  email: "mike.hayden@ga.co",
  password: "password",
  password_confirmation: "password"
})

emily = User.create!({
  username: "emilyi",
  email: "emily.isacke@ga.co",
  password: "password",
  password_confirmation: "password"
})

Post.create!([{
  user_id: mike.id,
  image: "something.jpg",
  caption: "Montego Bay"
},
{
  user_id: mike.id,
  image: "something-else.jpg",
  caption: "Puerto del Carmen"
}])

Post.create!([{
  user_id: emily.id,
  image: "emily-1.jpg",
  caption: "Italy"
},
{
  user_id: emily.id,
  image: "emily-2.jpg",
  caption: "Namibia"
},
{
  user_id: emily.id,
  image: "emily-3.jpg",
  caption: "Australia"
}])
