require("bundler/setup")
Bundler.require(:default)

Dir[File.dirname(__FILE__) + '/lib/*.rb'].each { |file| require file }


get('/') do
  @stores = Store.all
  @brands = Brand.all
  erb:index
end

post('/store') do
  new_store = Store.create({:store => params['store']})
  @stores = Store.all
  @brands = Brand.all
  erb:index
end

post('/brand') do
  new_brand = Brand.create({:brand => params['brand'], :price => params['price'].to_d})
  @brands = Brand.all
  @stores = Store.all
  erb:index
end

delete('/delete_store') do
  deleted_store = Store.find(params['store_delete'].to_i)
  deleted_store.destroy
  @stores = Store.all
  @brands = Brand.all
  erb:index
end

delete('/delete_brand') do
  deleted_brand = Brand.find(params['brand_delete'].to_i)
  deleted_brand.destroy
  @brands = Brand.all
  @stores = Store.all
  erb:index
end
