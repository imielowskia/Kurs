require 'test_helper'

class GrupasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @grupa = grupas(:one)
  end

  test "should get index" do
    get grupas_url
    assert_response :success
  end

  test "should get new" do
    get new_grupa_url
    assert_response :success
  end

  test "should create grupa" do
    assert_difference('Grupa.count') do
      post grupas_url, params: { grupa: { name: @grupa.name, semestr: @grupa.semestr } }
    end

    assert_redirected_to grupa_url(Grupa.last)
  end

  test "should show grupa" do
    get grupa_url(@grupa)
    assert_response :success
  end

  test "should get edit" do
    get edit_grupa_url(@grupa)
    assert_response :success
  end

  test "should update grupa" do
    patch grupa_url(@grupa), params: { grupa: { name: @grupa.name, semestr: @grupa.semestr } }
    assert_redirected_to grupa_url(@grupa)
  end

  test "should destroy grupa" do
    assert_difference('Grupa.count', -1) do
      delete grupa_url(@grupa)
    end

    assert_redirected_to grupas_url
  end
end
