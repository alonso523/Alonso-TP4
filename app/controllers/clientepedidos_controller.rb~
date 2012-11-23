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
    @clientepedido = Clientepedido.new(params[:clientepedido])

    respond_to do |format|
      if @clientepedido.save
        format.html { redirect_to @clientepedido, notice: 'Clientepedido was successfully created.' }
        format.json { render json: @clientepedido, status: :created, location: @clientepedido }
      else
        format.html { render action: "new" }
        format.json { render json: @clientepedido.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /clientepedidos/1
  # PUT /clientepedidos/1.json
  def update
    @clientepedido = Clientepedido.find(params[:id])

    respond_to do |format|
      if @clientepedido.update_attributes(params[:clientepedido])
        format.html { redirect_to @clientepedido, notice: 'Clientepedido was successfully updated.' }
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
