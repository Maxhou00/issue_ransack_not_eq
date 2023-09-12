# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

User.create(
  firstname: "Toto",
  lastname: "Dupont",
  email: "toto.dupont@at.com",
)

User.create(
  firstname: "Tata",
  lastname: "Dupond",
  email: "tata.dupond@at.com",
)

first_user = User.first
last_user = User.last

200.times do |i|
  Article.create(
    title: "Article n°#{i}",
    content: "Content for article n°#{i}"
  )
end

Article.all.each_with_index do |article, i|
  10.times do |n|
    article.comments.create!(
      content: "First User Comment n°#{n} for article #{i}",
      upvote: (i % 2.0).to_s,
      user: first_user
    )
  end

  10.times do |n|
    article.comments.create!(
      content: "Last User Comment n°#{n} for article #{i}",
      upvote: (i % 2.0).to_s,
      user: last_user
    )
  end
end
