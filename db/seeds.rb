# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
user = User.first
testwine = Wine.create(spoon_id: 447938, title: "Rombauer Merlot", avg_rating: 0.96, description: "It is a merlot", image: "https://spoonacular.com/productImages/447938-312x231.jpg", link: "https://click.linksynergy.com/deeplink?id=*QCiIS6t4gA&mid=2025&murl=https%3A%2F%2Fwww.wine.com%2Fproduct%2Frombauer-merlot-2008%2F116883", price: "$25.59", rating_count: 5.0, score: 0.8975)

userwine1 = UsersWine.create(user_id: user.id, wine_id: testwine.id)
