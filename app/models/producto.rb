#Clase producto, tiene todos los datos de los productos
class Producto < ActiveRecord::Base
  attr_accessible :cantidad, :descripcion, :image, :marca, :nombre, :precio, :tipoProducto_id, :remote_image_url

#Relaciones para el manejo de la base de datos
belongs_to :tipo_producto

has_many :pedido
has_many :user, :through => :pedido

#permite la relacion entre la tabla de clientes y productos
has_many :clienteproducto
has_many :cliente, :through => :clienteproducto

  mount_uploader :image, ImageUploader        #Permite la gestión de imágenes 

#Validaciones de los distintos atributos 
validates_presence_of :cantidad, :descripcion, :marca, :nombre, :precio, :tipoProducto_id

validates :precio,
	  :presence => true,
	  :format => {:with => /^[0-9]{8}$/ }

validates :cantidad,
          :presence => true,
          :format => {:with => /^[0-9]{9}$/ }

#Método que permite validar la cantidad en inventario
#def validarInventario
#  if cantidad.present? 
    

end
