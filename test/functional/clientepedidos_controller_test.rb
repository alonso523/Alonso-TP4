require 'test_helper'

class ClientepedidosControllerTest < ActionController::TestCase
  setup do
    @clientepedido = clientepedidos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:clientepedidos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create clientepedido" do
    assert_difference('Clientepedido.count') do
      post :create, clientepedido: { cantidad: @clientepedido.cantidad, cliente_id: @clientepedido.cliente_id, producto_id: @clientepedido.producto_id }
    end

    assert_redirected_to clientepedido_path(assigns(:clientepedido))
  end

  test "should show clientepedido" do
    get :show, id: @clientepedido
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @clientepedido
    assert_response :success
  end

  test "should update clientepedido" do
    put :update, id: @clientepedido, clientepedido: { cantidad: @clientepedido.cantidad, cliente_id: @clientepedido.cliente_id, producto_id: @clientepedido.producto_id }
    assert_redirected_to clientepedido_path(assigns(:clientepedido))
  end

  test "should destroy clientepedido" do
    assert_difference('Clientepedido.count', -1) do
      delete :destroy, id: @clientepedido
    end

    assert_redirected_to clientepedidos_path
  end
end
