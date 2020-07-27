require 'test_helper'

class TripsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @trip = trips(:one)
  end

  test "should get index" do
    get trips_url
    assert_response :success
  end

  test "should get new" do
    get new_trip_url
    assert_response :success
  end

  test "should create trip" do
    assert_difference('Trip.count') do
      post trips_url, params: { trip: { activities: @trip.activities, contact: @trip.contact, cost: @trip.cost, deposit: @trip.deposit, description: @trip.description, driver_cost: @trip.driver_cost, driver_discount: @trip.driver_discount, experiance_level: @trip.experiance_level, img: @trip.img, leaders: @trip.leaders, leave_date: @trip.leave_date, location: @trip.location, max_capacity: @trip.max_capacity, name: @trip.name, return_date: @trip.return_date, signup_location: @trip.signup_location, signup_time: @trip.signup_time, singup_style: @trip.singup_style } }
    end

    assert_redirected_to trip_url(Trip.last)
  end

  test "should show trip" do
    get trip_url(@trip)
    assert_response :success
  end

  test "should get edit" do
    get edit_trip_url(@trip)
    assert_response :success
  end

  test "should update trip" do
    patch trip_url(@trip), params: { trip: { activities: @trip.activities, contact: @trip.contact, cost: @trip.cost, deposit: @trip.deposit, description: @trip.description, driver_cost: @trip.driver_cost, driver_discount: @trip.driver_discount, experiance_level: @trip.experiance_level, img: @trip.img, leaders: @trip.leaders, leave_date: @trip.leave_date, location: @trip.location, max_capacity: @trip.max_capacity, name: @trip.name, return_date: @trip.return_date, signup_location: @trip.signup_location, signup_time: @trip.signup_time, singup_style: @trip.singup_style } }
    assert_redirected_to trip_url(@trip)
  end

  test "should destroy trip" do
    assert_difference('Trip.count', -1) do
      delete trip_url(@trip)
    end

    assert_redirected_to trips_url
  end
end
