#!/usr/bin/env ruby
class Inventory < ActiveRecord::Base
  belongs_to :brands
  belongs_to :stores
end
