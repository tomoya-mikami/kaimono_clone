json.extract! item, :id, :tag_id, :shop_id, :name, :stock, :price, :created_at, :updated_at
json.url item_url(item, format: :json)
