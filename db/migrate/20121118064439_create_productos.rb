class CreateProductos < ActiveRecord::Migration
  def change
    create_table :productos do |t|
      t.integer :tipoProducto_id
      t.string :nombre
      t.string :marca
      t.float :precio
      t.string :image
      t.string :descripcion
      t.integer :cantidad

      t.timestamps
    end
  end
end
