require 'spec_helper'

describe(Brand) do
  it { should have_many(:stores)}
  end

describe(Brand) do
  it { should validate_presence_of(:brand)}
  end

describe(Brand) do
  it { should validate_length_of(:brand)}
  end

describe('Brand') do
  describe('.capitalize_brand') do
    it("capitalizes the first letter in each word entered for brand title") do
      test_brand = Brand.create({:brand => "run for days", :price => 4.5})
      expect(test_brand.brand).to(eq("Run For Days"))
    end
  end
end
