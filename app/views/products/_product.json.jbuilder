json.extract! product, :id, :sku, :title, :price, :quantily, :image_url, :created_at, :updated_at
json.url product_url(product, format: :json)
