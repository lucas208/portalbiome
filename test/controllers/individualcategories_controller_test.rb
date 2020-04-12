require 'test_helper'

class IndividualcategoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @individualcategory = individualcategories(:one)
  end

  test "should get index" do
    get individualcategories_url
    assert_response :success
  end

  test "should get new" do
    get new_individualcategory_url
    assert_response :success
  end

  test "should create individualcategory" do
    assert_difference('Individualcategory.count') do
      post individualcategories_url, params: { individualcategory: { name: @individualcategory.name } }
    end

    assert_redirected_to individualcategory_url(Individualcategory.last)
  end

  test "should show individualcategory" do
    get individualcategory_url(@individualcategory)
    assert_response :success
  end

  test "should get edit" do
    get edit_individualcategory_url(@individualcategory)
    assert_response :success
  end

  test "should update individualcategory" do
    patch individualcategory_url(@individualcategory), params: { individualcategory: { name: @individualcategory.name } }
    assert_redirected_to individualcategory_url(@individualcategory)
  end

  test "should destroy individualcategory" do
    assert_difference('Individualcategory.count', -1) do
      delete individualcategory_url(@individualcategory)
    end

    assert_redirected_to individualcategories_url
  end
end
