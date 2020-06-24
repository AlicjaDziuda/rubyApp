require 'test_helper'

class BookedLectureRoomsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @booked_lecture_room = booked_lecture_rooms(:one)
  end

  test "should get index" do
    get booked_lecture_rooms_url
    assert_response :success
  end

  test "should get new" do
    get new_booked_lecture_room_url
    assert_response :success
  end

  test "should create booked_lecture_room" do
    assert_difference('BookedLectureRoom.count') do
      post booked_lecture_rooms_url, params: { booked_lecture_room: { data: @booked_lecture_room.data, hours: @booked_lecture_room.hours, name: @booked_lecture_room.name, person: @booked_lecture_room.person, time: @booked_lecture_room.time } }
    end

    assert_redirected_to booked_lecture_room_url(BookedLectureRoom.last)
  end

  test "should show booked_lecture_room" do
    get booked_lecture_room_url(@booked_lecture_room)
    assert_response :success
  end

  test "should get edit" do
    get edit_booked_lecture_room_url(@booked_lecture_room)
    assert_response :success
  end

  test "should update booked_lecture_room" do
    patch booked_lecture_room_url(@booked_lecture_room), params: { booked_lecture_room: { data: @booked_lecture_room.data, hours: @booked_lecture_room.hours, name: @booked_lecture_room.name, person: @booked_lecture_room.person, time: @booked_lecture_room.time } }
    assert_redirected_to booked_lecture_room_url(@booked_lecture_room)
  end

  test "should destroy booked_lecture_room" do
    assert_difference('BookedLectureRoom.count', -1) do
      delete booked_lecture_room_url(@booked_lecture_room)
    end

    assert_redirected_to booked_lecture_rooms_url
  end
end
