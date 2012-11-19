class Producto < ActiveRecord::Base
  attr_accessible :cantidad, :descripcion, :image, :marca, :nombre, :precio, :tipoProducto_id

has_many :pedido
has_many :user, :through => :pedido

end
