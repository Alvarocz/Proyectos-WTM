json.array!(@productos) do |producto|
  json.extract! producto, :id, :nombre, :tipo, :precio, :referencia
  json.url producto_url(producto, format: :json)
end
