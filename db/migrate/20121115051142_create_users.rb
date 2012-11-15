class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :provider
      t.string :uid
      t.integer :cedula
      t.string :nombre
      t.string :apellido
      t.string :correo
      t.float :direccion

      t.timestamps
    end
  end
end
