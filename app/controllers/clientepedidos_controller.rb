class ClientepedidosController < ApplicationController
  # GET /clientepedidos
  # GET /clientepedidos.json
  def index
    @clientepedidos = Clientepedido.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @clientepedidos }
    end
  end

  # GET /clientepedidos/1
  # GET /clientepedidos/1.json
  def show
    @clientepedido = Clientepedido.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @clientepedido }
    end
  end

  # GET /clientepedidos/new
  # GET /clientepedidos/new.json
  def new
    @clientepedido = Clientepedido.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @clientepedido }
    end
  end

  # GET /clientepedidos/1/edit
  def edit
    @clientepedido = Clientepedido.find(params[:id])
  end

  # POST /clientepedidos
  # POST /clientepedidos.json
  def create
    @clientepedido = Clientepedido.new(params[:clientepedido])       #Obtiene los datos del clientepedido
    @cantidadCliente = @clientepedido.cantidad		    #cantidad de producto solicitado por el cliente
    @cantidadProducto = Producto.find(@clientepedido.producto_id).cantidad   #cantidad de ese producto
    @cantidadActual = @cantidadProducto - @cantidadCliente	#Cantidad actualizada
    @idProducto = Producto.find(@clientepedido.producto_id).id  #Permite obtener el id del producto
#      raise @idProducto.to_yaml

   if @cantidadCliente > @cantidadProducto
    	flash[:notice] = "No hay suficiente cantidades en el inventario"
        render :new
   else
    respond_to do |format|
      if @clientepedido.save
	format.html { redirect_to @clientepedido, notice: 'EL pedido fue registrado con exito.' }
	format.json { render json: @clientepedido, status: :created, location: @clientepedido }
Producto.find(@idProducto).update_attribute(:cantidad, @cantidadActual) #Actualiza la cantidad de ese producto del inventario
      else
	format.html { render action: "new" }
	format.json { render json: @clientepedido.errors, status: :unprocessable_entity }
      end
     end
    end
   end

  # PUT /clientepedidos/1
  # PUT /clientepedidos/1.json
  def update
    @clientepedido = Clientepedido.find(params[:id])

    respond_to do |format|
      if @clientepedido.update_attributes(params[:clientepedido])
        format.html { redirect_to @clientepedido, notice: 'EL pedido fue actualizado.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @clientepedido.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /clientepedidos/1
  # DELETE /clientepedidos/1.json
  def destroy
    @clientepedido = Clientepedido.find(params[:id])
    @clientepedido.destroy

    respond_to do |format|
      format.html { redirect_to clientepedidos_url }
      format.json { head :no_content }
    end
  end
end
