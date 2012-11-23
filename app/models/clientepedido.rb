class Clientepedido < ActiveRecord::Base
  attr_accessible :cantidad, :cliente_id, :producto_id

#RElaciones de la tabla intermedia
belongs_to :cliente
belongs_to :producto

#Validaciones de los distintos atributos 
validates_presence_of :cantidad, :cliente_id, :producto_id

#Validaciones, tanto del lado del cliente como del lado del servidor
validates :cantidad,
	  :presence => true,
  	  :format => {:with => /^[0-9]{1,}$/ }

end
