class TipoProducto < ActiveRecord::Base
  attr_accessible :descripcion, :nombre

#Validaciones de los distintos atributos 
validates_presence_of :descripcion, :nombre


end
