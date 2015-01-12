require('sinatra')
require('sinatra/reloader')
also_reload('./lib/**/*.rb')
require('./lib/parcels')

get('/') do
  erb(:form)
end

get('/result') do
  @width = params.fetch("width").to_i
  @length = params.fetch("length").to_i
  @depth = params.fetch("depth").to_i
  parcel = Parcels.new()
  parcel.volume(@length, @width, @depth)
  @ship_cost = parcel.cost_to_ship()
  erb(:result)
end
