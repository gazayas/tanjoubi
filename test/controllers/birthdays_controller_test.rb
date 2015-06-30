require 'test_helper'

class BirthdaysControllerTest < ActionController::TestCase
  setup do
    @birthday = birthdays(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:birthdays)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create birthday" do
    assert_difference('Birthday.count') do
      post :create, birthday: { hidzuke: @birthday.hidzuke, namae: @birthday.namae }
    end

    assert_redirected_to birthday_path(assigns(:birthday))
  end

  test "should show birthday" do
    get :show, id: @birthday
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @birthday
    assert_response :success
  end

  test "should update birthday" do
    patch :update, id: @birthday, birthday: { hidzuke: @birthday.hidzuke, namae: @birthday.namae }
    assert_redirected_to birthday_path(assigns(:birthday))
  end

  test "should destroy birthday" do
    assert_difference('Birthday.count', -1) do
      delete :destroy, id: @birthday
    end

    assert_redirected_to birthdays_path
  end
end
