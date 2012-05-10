require 'test_helper'

class ApartmentsControllerTest < ActionController::TestCase
  setup do
    @apartment = apartments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:apartments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create apartment" do
    assert_difference('Apartment.count') do
      post :create, apartment: { address: @apartment.address, city: @apartment.city, descriptions: @apartment.descriptions, email: @apartment.email, end_date: @apartment.end_date, housing_type: @apartment.housing_type, name: @apartment.name, neighborhood: @apartment.neighborhood, pets: @apartment.pets, pictures: @apartment.pictures, rent: @apartment.rent, start_date: @apartment.start_date, tel: @apartment.tel }
    end

    assert_redirected_to apartment_path(assigns(:apartment))
  end

  test "should show apartment" do
    get :show, id: @apartment
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @apartment
    assert_response :success
  end

  test "should update apartment" do
    put :update, id: @apartment, apartment: { address: @apartment.address, city: @apartment.city, descriptions: @apartment.descriptions, email: @apartment.email, end_date: @apartment.end_date, housing_type: @apartment.housing_type, name: @apartment.name, neighborhood: @apartment.neighborhood, pets: @apartment.pets, pictures: @apartment.pictures, rent: @apartment.rent, start_date: @apartment.start_date, tel: @apartment.tel }
    assert_redirected_to apartment_path(assigns(:apartment))
  end

  test "should destroy apartment" do
    assert_difference('Apartment.count', -1) do
      delete :destroy, id: @apartment
    end

    assert_redirected_to apartments_path
  end
end
