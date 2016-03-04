class CreateProductos < ActiveRecord::Migration
  def change
    create_table :productos do |t|
      t.string :nombre
      t.string :tipo
      t.float :precio
      t.integer :referencia

      t.timestamps
    end
  end
end
