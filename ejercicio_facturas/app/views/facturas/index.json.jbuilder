json.array!(@facturas) do |factura|
  json.extract! factura, :id, :nombre, :numero, :fecha, :nombre_emisor, :identificacion_emisor, :nombre_receptor, :identificacion_receptor, :valor_total
  json.url factura_url(factura, format: :json)
end
