#!/usr/bin/env ruby
class BrandsStore < ActiveRecord::Base
  belongs_to :store
  belongs_to :brand
end
