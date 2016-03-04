class Factura < ActiveRecord::Base
  has_many :productos

=begin 
  validates :productos, inclusion: { in: @producto.productos.all,
    message: "%{value} no es un articulo valido" }
=end

  validates :numero, numericality: { only_integer: true }

  validates :valor_total, length: { in: 5..150000 }
end
