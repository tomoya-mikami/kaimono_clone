json.extract! tag_recipe, :id, :recipe_id, :tag_id, :require, :created_at, :updated_at
json.url tag_recipe_url(tag_recipe, format: :json)
