class User < ActiveRecord::Base
  attr_accessible :apellido, :cedula, :correo, :direccion, :nombre, :provider, :uid

has_many :pedido
has_many :producto, :through => :pedido

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
