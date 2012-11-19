class CreatePedidos < ActiveRecord::Migration
  def change
    create_table :pedidos do |t|
      t.integer :user_id
      t.integer :producto_id
      t.integer :cantidad

      t.timestamps
    end
  end
end
