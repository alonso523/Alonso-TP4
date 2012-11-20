class Producto < ActiveRecord::Base
  attr_accessible :cantidad, :descripcion, :image, :marca, :nombre, :precio, :tipoProducto_id, :remote_image_url

belongs_to :tipo_producto

has_many :pedido
has_many :user, :through => :pedido

has_many :clienteproducto
has_many :cliente, :through => :clienteproducto

  mount_uploader :image, ImageUploader

end
