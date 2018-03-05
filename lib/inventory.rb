#!/usr/bin/env ruby
class Inventory < ActiveRecord::Base
  belongs_to :stores
  belongs_to :brands
end
