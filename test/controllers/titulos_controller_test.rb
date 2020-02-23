require 'test_helper'

class TitulosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @titulo = titulos(:one)
  end

  test "should get index" do
    get titulos_url, as: :json
    assert_response :success
  end

  test "should create titulo" do
    assert_difference('Titulo.count') do
      post titulos_url, params: { titulo: { diploma: @titulo.diploma, fecha_grado: @titulo.fecha_grado, resolucion: @titulo.resolucion } }, as: :json
    end

    assert_response 201
  end

  test "should show titulo" do
    get titulo_url(@titulo), as: :json
    assert_response :success
  end

  test "should update titulo" do
    patch titulo_url(@titulo), params: { titulo: { diploma: @titulo.diploma, fecha_grado: @titulo.fecha_grado, resolucion: @titulo.resolucion } }, as: :json
    assert_response 200
  end

  test "should destroy titulo" do
    assert_difference('Titulo.count', -1) do
      delete titulo_url(@titulo), as: :json
    end

    assert_response 204
  end
end
