require('rspec')
require('parcel')

describe(Parcel) do
  describe('#cost_to_ship') do
    it('returns cost based on the volume of the parcel') do
      test_parcel = Parcel.new(1,2,3,0)
      expect(test_parcel.cost_to_ship()).to(eq(15))
    end
    it('include weight in the cost of shipping') do
      test_parcel = Parcel.new(2,2,2,10)
      expect(test_parcel.cost_to_ship()).to(eq(25))
    end
    end
  end
