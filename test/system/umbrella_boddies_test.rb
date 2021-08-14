require "application_system_test_case"

class UmbrellaBoddiesTest < ApplicationSystemTestCase
  setup do
    @umbrella_boddy = umbrella_boddies(:one)
  end

  test "visiting the index" do
    visit umbrella_boddies_url
    assert_selector "h1", text: "Umbrella Boddies"
  end

  test "creating a Umbrella boddy" do
    visit umbrella_boddies_url
    click_on "New Umbrella Boddy"

    fill_in "Feastday", with: @umbrella_boddy.feastDay
    fill_in "Meetingday", with: @umbrella_boddy.meetingDay
    fill_in "Motto", with: @umbrella_boddy.motto
    fill_in "Organisation", with: @umbrella_boddy.organisation
    fill_in "Patronsaint", with: @umbrella_boddy.patronSaint
    fill_in "Slogan", with: @umbrella_boddy.slogan
    click_on "Create Umbrella boddy"

    assert_text "Umbrella boddy was successfully created"
    click_on "Back"
  end

  test "updating a Umbrella boddy" do
    visit umbrella_boddies_url
    click_on "Edit", match: :first

    fill_in "Feastday", with: @umbrella_boddy.feastDay
    fill_in "Meetingday", with: @umbrella_boddy.meetingDay
    fill_in "Motto", with: @umbrella_boddy.motto
    fill_in "Organisation", with: @umbrella_boddy.organisation
    fill_in "Patronsaint", with: @umbrella_boddy.patronSaint
    fill_in "Slogan", with: @umbrella_boddy.slogan
    click_on "Update Umbrella boddy"

    assert_text "Umbrella boddy was successfully updated"
    click_on "Back"
  end

  test "destroying a Umbrella boddy" do
    visit umbrella_boddies_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Umbrella boddy was successfully destroyed"
  end
end
