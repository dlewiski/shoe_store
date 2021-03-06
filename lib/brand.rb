#!/usr/bin/env ruby
class Brand < ActiveRecord::Base
  validates(:brand, {:presence => true, :length => { :maximum => 100 }})
  validates_uniqueness_of :brand
  validates(:price, {:presence => true})
  has_many :inventories
  has_many :stores, through: :inventories
  before_validation(:capitalize_brand)

  private

  def capitalize_brand
    self.brand=(brand().titleize)
  end
end
