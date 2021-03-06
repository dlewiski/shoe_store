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
  new_brand = Brand.new({:brand => params['brand'], :price => params['price'].to_d})
  new_brand.save
  @brands = Brand.all
  @stores = Store.all
  erb:index
end

get('/store/:id/edit') do
  @store = Store.find(params[:id].to_i)
  erb:store_edit
end

patch('/store')do
  update_store = Store.find(params['store_update'].to_i)
  update_store.update({:store => params['store']})
  @stores = Store.all
  @brands = Brand.all
  erb:index
end

get('/store/:id') do
  @store = Store.find(params['id'].to_i)
  @store_brands = @store.brands
  @brands = Brand.all
  erb:store
end

post('/store/:id') do
  @store = Store.find(params['id'].to_i)
  add_brand = Brand.find(params['brand_select'].to_i)
  unless @store.brands.push(add_brand)
    @error_message = "Brand already exists!"
    @store_brands = @store.brands
    @brands = Brand.all
    erb:store
  end
  @store_brands = @store.brands
  @brands = Brand.all
  @error_message = nil
  erb:store
end

post('/store/:id/brand') do
  @store = Store.find(params['id'].to_i)
  new_brand = Brand.new({:brand => params['brand'], :price => params['price'].to_d})
  if new_brand.save
    @store.brands.push(new_brand)
    @store_brands = @store.brands
    @brands = Brand.all
    @error_message = nil
    erb:store
  else
    @error_message = "Brand already exists!"
    @store_brands = @store.brands
    @brands = Brand.all
    erb:store
  end
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

delete('/delete/:id/brand') do
  @store = Store.find(params['id'].to_i)
  deleted_brand = Brand.find(params['brand_delete'].to_i)
  deleted_brand.inventories.delete_all
  @store_brands = @store.brands
  @brands = Brand.all
  @stores = Store.all
  erb:store
end
