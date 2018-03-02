require 'spec_helper'

describe(Store) do
  it { should have_many(:brands)}
  end

describe(Store) do
  it { should validate_presence_of(:store)}
  end

describe(Store) do
  it { should validate_length_of(:store)}
  end

describe('Store') do
  describe('.capitalize') do
    it("capitalizes the first letter in each word entered for store title") do
      test_store = Store.create({:store => "david's shoe emporium"})
      expect(test_store.store).to(eq("David's Shoe Emporium"))
    end
  end
end
