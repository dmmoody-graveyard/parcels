class Parcels
  define_method(:initialize) do
  end

  define_method(:volume) do |length, width, depth|
    @volume = length * width * depth
  end
end
