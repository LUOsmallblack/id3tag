require 'test_helper'

class UriinfosControllerTest < ActionController::TestCase
  setup do
    @uriinfo = uriinfos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:uriinfos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create uriinfo" do
    assert_difference('Uriinfo.count') do
      post :create, uriinfo: { name: @uriinfo.name, originurl: @uriinfo.originurl, uri: @uriinfo.uri }
    end

    assert_redirected_to uriinfo_path(assigns(:uriinfo))
  end

  test "should show uriinfo" do
    get :show, id: @uriinfo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @uriinfo
    assert_response :success
  end

  test "should update uriinfo" do
    patch :update, id: @uriinfo, uriinfo: { name: @uriinfo.name, originurl: @uriinfo.originurl, uri: @uriinfo.uri }
    assert_redirected_to uriinfo_path(assigns(:uriinfo))
  end

  test "should destroy uriinfo" do
    assert_difference('Uriinfo.count', -1) do
      delete :destroy, id: @uriinfo
    end

    assert_redirected_to uriinfos_path
  end
end
