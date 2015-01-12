require('rspec')
require('parcels')

describe(Parcels) do
  describe('#volume') do
    it('Takes the width, length, and depth, and returns the volume') do
      test_parcel = Parcels.new()
      expect(test_parcel.volume(3, 3, 3)).to(eq(27))
    end
  end
end
