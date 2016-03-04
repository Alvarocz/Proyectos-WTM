class Producto < ActiveRecord::Base
  has_many :productos

  validates :tipo, inclusion: { in: %w( aseo aseo_personal hogar ropa alimento tecnologia otro ),
    message: "El elemento de tipo %{value} no esta permitido" }

  validates :precio, length: { in: 5..10000000 }

  validates :referencia, numericality: { only_integer: true }
  validates :referencia, numericality: { greater_than: 0 }
end
