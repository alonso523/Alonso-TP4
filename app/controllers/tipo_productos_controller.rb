class TipoProductosController < ApplicationController
  # GET /tipo_productos
  # GET /tipo_productos.json
  def index
    @tipo_productos = TipoProducto.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @tipo_productos }
    end
  end

  # GET /tipo_productos/1
  # GET /tipo_productos/1.json
  def show
    @tipo_producto = TipoProducto.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @tipo_producto }
    end
  end

  # GET /tipo_productos/new
  # GET /tipo_productos/new.json
  def new
    @tipo_producto = TipoProducto.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @tipo_producto }
    end
  end

  # GET /tipo_productos/1/edit
  def edit
    @tipo_producto = TipoProducto.find(params[:id])
  end

  # POST /tipo_productos
  # POST /tipo_productos.json
  def create
    @tipo_producto = TipoProducto.new(params[:tipo_producto])

    respond_to do |format|
      if @tipo_producto.save
        format.html { redirect_to @tipo_producto, notice: 'Tipo producto was successfully created.' }
        format.json { render json: @tipo_producto, status: :created, location: @tipo_producto }
      else
        format.html { render action: "new" }
        format.json { render json: @tipo_producto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /tipo_productos/1
  # PUT /tipo_productos/1.json
  def update
    @tipo_producto = TipoProducto.find(params[:id])

    respond_to do |format|
      if @tipo_producto.update_attributes(params[:tipo_producto])
        format.html { redirect_to @tipo_producto, notice: 'Tipo producto was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @tipo_producto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tipo_productos/1
  # DELETE /tipo_productos/1.json
  def destroy
    @tipo_producto = TipoProducto.find(params[:id])
    @tipo_producto.destroy

    respond_to do |format|
      format.html { redirect_to tipo_productos_url }
      format.json { head :no_content }
    end
  end
end
