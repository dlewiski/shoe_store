#!/usr/bin/env ruby
class Brand < ActiveRecord::Base
  validates(:brand, {:presence => true, :length => { :maximum => 100 }})
  validates(:price, {:presence => true})
  has_many :brands_stores
  has_many :stores, through: :brands_stores
  before_create(:capitalize_brand)

  private

  def capitalize_brand
    self.brand=(brand().titleize)
  end
end
