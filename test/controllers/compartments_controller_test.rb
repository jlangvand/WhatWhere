require 'test_helper'

class CompartmentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @compartment = compartments(:one)
  end

  test "should get index" do
    get compartments_url
    assert_response :success
  end

  test "should get new" do
    get new_compartment_url
    assert_response :success
  end

  test "should create compartment" do
    assert_difference('Compartment.count') do
      post compartments_url, params: { compartment: { comment: @compartment.comment, name: @compartment.name, number: @compartment.number, shelf: @compartment.shelf } }
    end

    assert_redirected_to compartment_url(Compartment.last)
  end

  test "should show compartment" do
    get compartment_url(@compartment)
    assert_response :success
  end

  test "should get edit" do
    get edit_compartment_url(@compartment)
    assert_response :success
  end

  test "should update compartment" do
    patch compartment_url(@compartment), params: { compartment: { comment: @compartment.comment, name: @compartment.name, number: @compartment.number, shelf: @compartment.shelf } }
    assert_redirected_to compartment_url(@compartment)
  end

  test "should destroy compartment" do
    assert_difference('Compartment.count', -1) do
      delete compartment_url(@compartment)
    end

    assert_redirected_to compartments_url
  end
end
