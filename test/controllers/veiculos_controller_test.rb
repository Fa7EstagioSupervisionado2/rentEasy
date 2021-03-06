require 'test_helper'

class VeiculosControllerTest < ActionController::TestCase
  setup do
    @veiculo = veiculos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:veiculos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create veiculo" do
    assert_difference('Veiculo.count') do
      post :create, veiculo: { alugado: @veiculo.alugado, ano: @veiculo.ano, cor: @veiculo.cor, garagem_id: @veiculo.garagem_id, marca: @veiculo.marca, modelo: @veiculo.modelo, placa: @veiculo.placa, valor_diaria: @veiculo.valor_diaria }
    end

    assert_redirected_to veiculo_path(assigns(:veiculo))
  end

  test "should show veiculo" do
    get :show, id: @veiculo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @veiculo
    assert_response :success
  end

  test "should update veiculo" do
    patch :update, id: @veiculo, veiculo: { alugado: @veiculo.alugado, ano: @veiculo.ano, cor: @veiculo.cor, garagem_id: @veiculo.garagem_id, marca: @veiculo.marca, modelo: @veiculo.modelo, placa: @veiculo.placa, valor_diaria: @veiculo.valor_diaria }
    assert_redirected_to veiculo_path(assigns(:veiculo))
  end

  test "should destroy veiculo" do
    assert_difference('Veiculo.count', -1) do
      delete :destroy, id: @veiculo
    end

    assert_redirected_to veiculos_path
  end
end
