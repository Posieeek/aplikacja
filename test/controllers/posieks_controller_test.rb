require 'test_helper'

class PosieksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @posiek = posieks(:one)
  end

  test "should get index" do
    get posieks_url
    assert_response :success
  end

  test "should get new" do
    get new_posiek_url
    assert_response :success
  end

  test "should create posiek" do
    assert_difference('Posiek.count') do
      post posieks_url, params: { posiek: { posieeek@gmail.com: @posiek.posieeek@gmail.com } }
    end

    assert_redirected_to posiek_url(Posiek.last)
  end

  test "should show posiek" do
    get posiek_url(@posiek)
    assert_response :success
  end

  test "should get edit" do
    get edit_posiek_url(@posiek)
    assert_response :success
  end

  test "should update posiek" do
    patch posiek_url(@posiek), params: { posiek: { posieeek@gmail.com: @posiek.posieeek@gmail.com } }
    assert_redirected_to posiek_url(@posiek)
  end

  test "should destroy posiek" do
    assert_difference('Posiek.count', -1) do
      delete posiek_url(@posiek)
    end

    assert_redirected_to posieks_url
  end
end
