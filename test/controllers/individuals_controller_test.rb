require 'test_helper'

class IndividualsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @individual = individuals(:one)
  end

  test "should get index" do
    get individuals_url
    assert_response :success
  end

  test "should get new" do
    get new_individual_url
    assert_response :success
  end

  test "should create individual" do
    assert_difference('Individual.count') do
      post individuals_url, params: { individual: { email: @individual.email, foto: @individual.foto, individualcategory_id: @individual.individualcategory_id, linklattes: @individual.linklattes, name: @individual.name } }
    end

    assert_redirected_to individual_url(Individual.last)
  end

  test "should show individual" do
    get individual_url(@individual)
    assert_response :success
  end

  test "should get edit" do
    get edit_individual_url(@individual)
    assert_response :success
  end

  test "should update individual" do
    patch individual_url(@individual), params: { individual: { email: @individual.email, foto: @individual.foto, individualcategory_id: @individual.individualcategory_id, linklattes: @individual.linklattes, name: @individual.name } }
    assert_redirected_to individual_url(@individual)
  end

  test "should destroy individual" do
    assert_difference('Individual.count', -1) do
      delete individual_url(@individual)
    end

    assert_redirected_to individuals_url
  end
end
