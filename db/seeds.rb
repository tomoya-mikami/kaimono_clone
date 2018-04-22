# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?

Shop.create!(name: '福島屋', adress:'東京都港区六本木１丁目４−５', business_hours: '8:00 ~ 22:00', GPS: '0,0') if Rails.env.development?
Shop.create!(name: 'もとまちユニオン・六本木店', adress:'東京都港区六本木３丁目７−１', business_hours: '10:00 ~ 23:00', GPS: '0,0') if Rails.env.development?
Shop.create!(name: '明治屋 六本木ストアー', adress:'東京都港区六本木７丁目１５−１４ 塩業ビル 1F', business_hours: '10:00 ~ 21:00', GPS: '0,0') if Rails.env.development?

Tag.create!(name: 'にんじん') if Rails.env.development?
Tag.create!(name: '玉ねぎ') if Rails.env.development?
Tag.create!(name: 'じゃがいも') if Rails.env.development?
Tag.create!(name: 'ひき肉') if Rails.env.development?
Tag.create!(name: 'カレールー') if Rails.env.development?

Item.create!(shop_id: 1, tag_id: 1, name: 'にんじん', stock: 5, price: 200) if Rails.env.development?
Item.create!(shop_id: 1, tag_id: 1, name: 'こうれいにんじん', stock: 5, price: 200) if Rails.env.development?
Item.create!(shop_id: 1, tag_id: 2, name: '玉ねぎ', stock: 3, price: 300) if Rails.env.development?
Item.create!(shop_id: 2, tag_id: 2, name: '新芽玉ねぎ', stock: 5, price: 200) if Rails.env.development?
Item.create!(shop_id: 1, tag_id: 3, name: 'じゃが芋', stock: 2, price: 300) if Rails.env.development?
Item.create!(shop_id: 3, tag_id: 3, name: 'デカイじゃが芋', stock: 3, price: 400) if Rails.env.development?
Item.create!(shop_id: 1, tag_id: 4, name: 'アメリカ産 ひき肉', stock: 5, price: 300) if Rails.env.development?
Item.create!(shop_id: 2, tag_id: 4, name: 'アメリカ産 ひき肉', stock: 4, price: 200) if Rails.env.development?
Item.create!(shop_id: 2, tag_id: 4, name: '日本産 ひき肉', stock: 4, price: 600) if Rails.env.development?
Item.create!(shop_id: 1, tag_id: 5, name: 'バーモンドカレー', stock: 6, price: 300) if Rails.env.development?
Item.create!(shop_id: 3, tag_id: 5, name: 'クレアおばさんのカレー', stock: 6, price: 300) if Rails.env.development?

Recipe.create!(name: 'カレー', description: '定番カレーライスです♪いろんなソースを隠し味に入れることで、味が複雑になり、一晩寝かせなくても、すぐに美味しいカレーが出来上がります') if Rails.env.development?
Recipe.create!(name: '肉じゃが', description: 'カレーじゃなくて肉じゃがです') if Rails.env.development?

TagRecipe.create!(recipe_id: 1, tag_id: 1, require: 2) if Rails.env.development?
TagRecipe.create!(recipe_id: 1, tag_id: 2, require: 1) if Rails.env.development?
TagRecipe.create!(recipe_id: 1, tag_id: 3, require: 2) if Rails.env.development?
TagRecipe.create!(recipe_id: 1, tag_id: 4, require: 1) if Rails.env.development?
TagRecipe.create!(recipe_id: 1, tag_id: 5, require: 1) if Rails.env.development?

TagRecipe.create!(recipe_id: 2, tag_id: 4, require: 1) if Rails.env.development?
TagRecipe.create!(recipe_id: 2, tag_id: 3, require: 1) if Rails.env.development?