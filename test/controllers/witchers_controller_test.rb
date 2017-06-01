require 'test_helper'

class WitchersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @witcher = witchers(:one)
  end

  test "should get index" do
    get witchers_url
    assert_response :success
  end

  test "should get new" do
    get new_witcher_url
    assert_response :success
  end

  test "should create witcher" do
    assert_difference('Witcher.count') do
      post witchers_url, params: { witcher: {  } }
    end

    assert_redirected_to witcher_url(Witcher.last)
  end

  test "should show witcher" do
    get witcher_url(@witcher)
    assert_response :success
  end

  test "should get edit" do
    get edit_witcher_url(@witcher)
    assert_response :success
  end

  test "should update witcher" do
    patch witcher_url(@witcher), params: { witcher: {  } }
    assert_redirected_to witcher_url(@witcher)
  end

  test "should destroy witcher" do
    assert_difference('Witcher.count', -1) do
      delete witcher_url(@witcher)
    end

    assert_redirected_to witchers_url
  end
end
