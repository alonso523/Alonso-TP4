class CreateClientes < ActiveRecord::Migration
  def change
    create_table :clientes do |t|
      t.integer :cedula
      t.string :nombre
      t.string :apellido
      t.string :correo
      t.string :direccion

      t.timestamps
    end
  end
end
