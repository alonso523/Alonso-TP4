class Cliente < ActiveRecord::Base
  attr_accessible :apellido, :cedula, :correo, :direccion, :nombre, :telefono

has_many :clienteproducto
has_many :producto, :through => :clienteproducto

#Validaciones de los distintos atributos 
validates_presence_of :apellido, :cedula, :correo, :direccion, :nombre, :telefono 

#validaciones de los aspectos que debe tener cada atributo, son tanto validaciones desde el lado del cliente como del lado del servidor
validates :cedula,
	  :presence => true,
	  :uniqueness => true,
  	  :format => {:with => /^[0-9]{9}$/ }

validates :correo,   
          :presence => true,   
          :uniqueness => true,   
          :format => { :with => /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i }

validates :telefono,
	  :presence => true,
	  :format => {:with => /^[0-9]{8}$/ }

validates :direccion,
          :presence => true,
          :format => {:with => /^(\d|-)?(\d|,)*\.?\d*$/ }

end
