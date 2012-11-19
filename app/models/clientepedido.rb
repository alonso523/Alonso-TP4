class Clientepedido < ActiveRecord::Base
  attr_accessible :cantidad, :cliente_id, :producto_id

belongs_to :cliente
belongs_to :producto

end
