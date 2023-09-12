# README

`bundle install`
`rails db:migrate`
`rails db:seeds`

You should have 2 Users, 200 Articles and 4000 comments (2000 for each user and 20 for each articles)
and in rails console compare the following queries

`User.joins(:comments).where("comments.article_id = 1 AND comments.upvote != '1.0'").count`
`User.ransack(g: { '0': { comments_article_id_eq: 1, comments_upvote_not_eq: '1.0' } }).result.size`

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
