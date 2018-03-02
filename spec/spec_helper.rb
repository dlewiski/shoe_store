ENV['RACK_ENV'] = 'test'
require 'rspec' 
require 'pry'
require 'pg'
require 'Shoe'
require 'Brand'

RSpec.configure do |config|
  config.after(:each) do
    Shoe.all().each() do |shoe|
      shoe.destroy()
    end
  end
    Brand.all().each() do |brand|
      brand.destroy()
    end
  end
end
