require("bundler/setup")
Bundler.require(:default)

Dir[File.dirname(__FILE__) + '/lib/*.rb'].each { |file| require file }


get('/') do
  @stores = Store.all
  erb:index
end

post('/') do
  new_store = Store.create({:store => params['store']})
  @stores = Store.all
  erb:index
end

delete('/delete_store') do
  deleted_store = Store.find(params['store_delete'].to_i)
  deleted_store.destroy
  @stores = Store.all
  erb:index
end
