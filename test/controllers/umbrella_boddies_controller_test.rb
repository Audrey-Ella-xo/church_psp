require 'test_helper'

class UmbrellaBoddiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @umbrella_boddy = umbrella_boddies(:one)
  end

  test "should get index" do
    get umbrella_boddies_url
    assert_response :success
  end

  test "should get new" do
    get new_umbrella_boddy_url
    assert_response :success
  end

  test "should create umbrella_boddy" do
    assert_difference('UmbrellaBoddy.count') do
      post umbrella_boddies_url, params: { umbrella_boddy: { feastDay: @umbrella_boddy.feastDay, meetingDay: @umbrella_boddy.meetingDay, motto: @umbrella_boddy.motto, organisation: @umbrella_boddy.organisation, patronSaint: @umbrella_boddy.patronSaint, slogan: @umbrella_boddy.slogan } }
    end

    assert_redirected_to umbrella_boddy_url(UmbrellaBoddy.last)
  end

  test "should show umbrella_boddy" do
    get umbrella_boddy_url(@umbrella_boddy)
    assert_response :success
  end

  test "should get edit" do
    get edit_umbrella_boddy_url(@umbrella_boddy)
    assert_response :success
  end

  test "should update umbrella_boddy" do
    patch umbrella_boddy_url(@umbrella_boddy), params: { umbrella_boddy: { feastDay: @umbrella_boddy.feastDay, meetingDay: @umbrella_boddy.meetingDay, motto: @umbrella_boddy.motto, organisation: @umbrella_boddy.organisation, patronSaint: @umbrella_boddy.patronSaint, slogan: @umbrella_boddy.slogan } }
    assert_redirected_to umbrella_boddy_url(@umbrella_boddy)
  end

  test "should destroy umbrella_boddy" do
    assert_difference('UmbrellaBoddy.count', -1) do
      delete umbrella_boddy_url(@umbrella_boddy)
    end

    assert_redirected_to umbrella_boddies_url
  end
end
