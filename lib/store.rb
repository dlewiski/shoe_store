#!/usr/bin/env ruby
class Store < ActiveRecord::Base
  validates(:store, {:presence => true, :length => { :maximum => 100 }})
  has_many :brands_stores
  has_many :brands, through: :brands_stores
  before_create(:capitalize)

  private

  def capitalize
    self.store=(store().titleize)
  end
end
