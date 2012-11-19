class Cliente < ActiveRecord::Base
  attr_accessible :apellido, :cedula, :correo, :direccion, :nombre, :telefono

has_many :clienteproducto
has_many :producto, :through => :clienteproducto

end
