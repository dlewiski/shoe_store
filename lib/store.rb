#!/usr/bin/env ruby
class Store < ActiveRecord::Base
  has_many :brands_stores
  has_many :brands, through: :brands_stores
end
