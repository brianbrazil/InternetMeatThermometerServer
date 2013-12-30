require 'test_helper'

class ThermometersControllerTest < ActionController::TestCase
  setup do
    @thermometer = thermometers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:thermometers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create thermometer" do
    assert_difference('Thermometer.count') do
      post :create, thermometer: { temperature: @thermometer.temperature, updated_at: @thermometer.updated_at }
    end

    assert_redirected_to thermometer_path(assigns(:thermometer))
  end

  test "should show thermometer" do
    get :show, id: @thermometer
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @thermometer
    assert_response :success
  end

  test "should update thermometer" do
    patch :update, id: @thermometer, thermometer: { temperature: @thermometer.temperature, updated_at: @thermometer.updated_at }
    assert_redirected_to thermometer_path(assigns(:thermometer))
  end

  test "should destroy thermometer" do
    assert_difference('Thermometer.count', -1) do
      delete :destroy, id: @thermometer
    end

    assert_redirected_to thermometers_path
  end
end
