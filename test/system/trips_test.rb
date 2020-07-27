require "application_system_test_case"

class TripsTest < ApplicationSystemTestCase
  setup do
    @trip = trips(:one)
  end

  test "visiting the index" do
    visit trips_url
    assert_selector "h1", text: "Trips"
  end

  test "creating a Trip" do
    visit trips_url
    click_on "New Trip"

    fill_in "Activities", with: @trip.activities
    fill_in "Contact", with: @trip.contact
    fill_in "Cost", with: @trip.cost
    fill_in "Deposit", with: @trip.deposit
    fill_in "Description", with: @trip.description
    fill_in "Driver cost", with: @trip.driver_cost
    check "Driver discount" if @trip.driver_discount
    fill_in "Experiance level", with: @trip.experiance_level
    fill_in "Img", with: @trip.img
    fill_in "Leaders", with: @trip.leaders
    fill_in "Leave date", with: @trip.leave_date
    fill_in "Location", with: @trip.location
    fill_in "Max capacity", with: @trip.max_capacity
    fill_in "Name", with: @trip.name
    fill_in "Return date", with: @trip.return_date
    fill_in "Signup location", with: @trip.signup_location
    fill_in "Signup time", with: @trip.signup_time
    fill_in "Singup style", with: @trip.singup_style
    click_on "Create Trip"

    assert_text "Trip was successfully created"
    click_on "Back"
  end

  test "updating a Trip" do
    visit trips_url
    click_on "Edit", match: :first

    fill_in "Activities", with: @trip.activities
    fill_in "Contact", with: @trip.contact
    fill_in "Cost", with: @trip.cost
    fill_in "Deposit", with: @trip.deposit
    fill_in "Description", with: @trip.description
    fill_in "Driver cost", with: @trip.driver_cost
    check "Driver discount" if @trip.driver_discount
    fill_in "Experiance level", with: @trip.experiance_level
    fill_in "Img", with: @trip.img
    fill_in "Leaders", with: @trip.leaders
    fill_in "Leave date", with: @trip.leave_date
    fill_in "Location", with: @trip.location
    fill_in "Max capacity", with: @trip.max_capacity
    fill_in "Name", with: @trip.name
    fill_in "Return date", with: @trip.return_date
    fill_in "Signup location", with: @trip.signup_location
    fill_in "Signup time", with: @trip.signup_time
    fill_in "Singup style", with: @trip.singup_style
    click_on "Update Trip"

    assert_text "Trip was successfully updated"
    click_on "Back"
  end

  test "destroying a Trip" do
    visit trips_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Trip was successfully destroyed"
  end
end
