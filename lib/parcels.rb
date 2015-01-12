class Parcels
  define_method(:initialize) do
  end

  define_method(:volume) do |length, width, depth|
    @volume = length * width * depth
  end

  define_method(:cost_to_ship) do
    if @volume <= 8000
      "$5"
    elsif  @volume > 8000 && @volume <= 20000
      "$10"
    else
      "$".concat((@volume * 0.02).to_i.to_s)

    end
  end
end
