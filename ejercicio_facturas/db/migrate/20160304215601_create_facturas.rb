class CreateFacturas < ActiveRecord::Migration
  def change
    create_table :facturas do |t|
      t.string :nombre
      t.integer :numero
      t.datetime :fecha
      t.string :nombre_emisor
      t.string :identificacion_emisor
      t.string :nombre_receptor
      t.string :identificacion_receptor
      t.integer :valor_total

      t.timestamps
    end
  end
end
