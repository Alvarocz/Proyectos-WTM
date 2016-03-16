class Factura < ActiveRecord::Base
  has_many :productos

  validates :numero, numericality: { only_integer: true }

  validates :valor_total, length: { in: 5..150000 }

  before_create :set_valor_total

  def set_valor_total
    if self.productos != []
      self.productos.each do |producto|
        self.valor_total += producto.precio
      end
    end
  end
end
