class User < ActiveRecord::Base
  attr_accessible :apellido, :cedula, :correo, :direccion, :nombre, :provider, :uid

has_many :pedido
has_many :producto, :through => :pedido

#Validaciones de los distintos atributos 
validates_presence_of :apellido, :cedula, :correo, :direccion, :nombre  
validates :correo,   
          :presence => true,   
          :uniqueness => true,   
          :format => { :with => /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i }

#método que permite hacer la autenticación con twitter
  def self.create_with_omniauth(auth)
    create! do |user|
      user.provider = auth["provider"]
      user.uid = auth["uid"]
      user.cedula = auth["info"]["cedula"]
      user.nombre = auth["info"]["nombre"]
      user.apellido = auth["info"]["apellido"]
      user.correo = auth["info"]["correo"]
      user.direccion = auth["info"]["direccion"]
    end
  end
end
