# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

    active admin

        bundle exec rails g active_admin:install 
        bundle exec rails db:migrate
        bundle exec rails db:seed

* Configuration

* Database creation

## shops
| name | type  | null  | default | description |
|------|-------|-------|---------|-------------|
| id   | integer | false | - | |
| name | string | false | - | ショップ名 |
| adress | string | false | - | 住所 |
| business_hours | time | false | - | 営業時間 |
| GPS | string | true | - | GPS |

## tags
| name | type  | null  | default | description |
|------|-------|-------|---------|-------------|
| id   | integer | false | - | |
| name | string | false | - | タグ名 |

## items
| name | type  | null  | default | description | foreign key |
|------|-------|-------|---------|-------------|-------------|
| id   | integer | false | - | | |
| tag_id | integer | false | - | タグid | tags.id |
| shop_id | integer | false | - | ショップid | shops.id |
| name | string | false | - | 商品名 | |
| stock | integer | false | - | 在庫 | |
| price | integer | false | - | 値段 | |

## recipes
| name | type  | null  | default | description |
|------|-------|-------|---------|-------------|
| id   | integer | false | - | |
| name | string | false | - | レシピ名 |
| description | string | false | - | 説明 |

## item_recipes
| name | type  | null  | default | description | foreign key |
|------|-------|-------|---------|-------------|-------------|
| id   | integer | false | - | | |
| recipe_id | integer | false | - | タグid | recipes.id |
| tag_id | integer | false | - | ショップid | items.id |

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* server comand

        start: bundle exec rails s -d -b 0.0.0.0
        stop: kill cat tmp/pids/server.pid
