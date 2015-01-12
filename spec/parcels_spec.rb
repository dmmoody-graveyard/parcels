require('rspec')
require('parcels')

describe(Parcels) do
  describe('#volume') do
    it('Takes the width, length, and depth, and returns the volume') do
      test_parcel = Parcels.new()
      expect(test_parcel.volume(3, 3, 3)).to(eq(27))
    end
  end

  describe('#cost_to_ship') do
    it('Takes the volume and returns a price to ship the volume') do
      test_parcel = Parcels.new()
      test_parcel.volume(20, 20, 20)
      expect(test_parcel.cost_to_ship()).to(eq("$5"))
    end

    it('Takes a volume greater than 8000 cm3 and returns $10') do
      test_parcel = Parcels.new()
      test_parcel.volume(21, 21, 21)
      expect(test_parcel.cost_to_ship()).to(eq("$10"))
    end

    it('Takes a volume greater than 20000 and returns cost to ship') do
      test_parcel = Parcels.new()
      test_parcel.volume(40, 40, 40)
      expect(test_parcel.cost_to_ship()).to(eq("$1280"))
    end
  end
end
