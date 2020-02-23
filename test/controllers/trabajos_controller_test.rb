require 'test_helper'

class TrabajosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @trabajo = trabajos(:one)
  end

  test "should get index" do
    get trabajos_url, as: :json
    assert_response :success
  end

  test "should create trabajo" do
    assert_difference('Trabajo.count') do
      post trabajos_url, params: { trabajo: { cargo: @trabajo.cargo, ciudad: @trabajo.ciudad, confirmacion: @trabajo.confirmacion, empresa: @trabajo.empresa, estado_laboral: @trabajo.estado_laboral, fecha_actulizacion: @trabajo.fecha_actulizacion, naturaleza: @trabajo.naturaleza, observacion: @trabajo.observacion } }, as: :json
    end

    assert_response 201
  end

  test "should show trabajo" do
    get trabajo_url(@trabajo), as: :json
    assert_response :success
  end

  test "should update trabajo" do
    patch trabajo_url(@trabajo), params: { trabajo: { cargo: @trabajo.cargo, ciudad: @trabajo.ciudad, confirmacion: @trabajo.confirmacion, empresa: @trabajo.empresa, estado_laboral: @trabajo.estado_laboral, fecha_actulizacion: @trabajo.fecha_actulizacion, naturaleza: @trabajo.naturaleza, observacion: @trabajo.observacion } }, as: :json
    assert_response 200
  end

  test "should destroy trabajo" do
    assert_difference('Trabajo.count', -1) do
      delete trabajo_url(@trabajo), as: :json
    end

    assert_response 204
  end
end
