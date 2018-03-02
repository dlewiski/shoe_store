#!/usr/bin/env ruby
class Store < ActiveRecord::Base
  validates(:store, {:presence => true})
  has_many :brands_stores
  has_many :brands, through: :brands_stores
end
