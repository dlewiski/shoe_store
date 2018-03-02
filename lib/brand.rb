#!/usr/bin/env ruby
class Brand < ActiveRecord::Base
  has_many :brands_stores
  has_many :stores, through: :brands_stores
end
