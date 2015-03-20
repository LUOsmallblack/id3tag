require 'test_helper'

class Id3sControllerTest < ActionController::TestCase
  setup do
    @id3 = id3s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:id3s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create id3" do
    assert_difference('Id3.count') do
      post :create, id3: { album: @id3.album, artist: @id3.artist, title: @id3.title }
    end

    assert_redirected_to id3_path(assigns(:id3))
  end

  test "should show id3" do
    get :show, id: @id3
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @id3
    assert_response :success
  end

  test "should update id3" do
    patch :update, id: @id3, id3: { album: @id3.album, artist: @id3.artist, title: @id3.title }
    assert_redirected_to id3_path(assigns(:id3))
  end

  test "should destroy id3" do
    assert_difference('Id3.count', -1) do
      delete :destroy, id: @id3
    end

    assert_redirected_to id3s_path
  end
end
