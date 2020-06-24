require "application_system_test_case"

class BookedLectureRoomsTest < ApplicationSystemTestCase
  setup do
    @booked_lecture_room = booked_lecture_rooms(:one)
  end

  test "visiting the index" do
    visit booked_lecture_rooms_url
    assert_selector "h1", text: "Booked Lecture Rooms"
  end

  test "creating a Booked lecture room" do
    visit booked_lecture_rooms_url
    click_on "New Booked Lecture Room"

    fill_in "Data", with: @booked_lecture_room.data
    fill_in "Hours", with: @booked_lecture_room.hours
    fill_in "Name", with: @booked_lecture_room.name
    fill_in "Person", with: @booked_lecture_room.person
    fill_in "Time", with: @booked_lecture_room.time
    click_on "Create Booked lecture room"

    assert_text "Booked lecture room was successfully created"
    click_on "Back"
  end

  test "updating a Booked lecture room" do
    visit booked_lecture_rooms_url
    click_on "Edit", match: :first

    fill_in "Data", with: @booked_lecture_room.data
    fill_in "Hours", with: @booked_lecture_room.hours
    fill_in "Name", with: @booked_lecture_room.name
    fill_in "Person", with: @booked_lecture_room.person
    fill_in "Time", with: @booked_lecture_room.time
    click_on "Update Booked lecture room"

    assert_text "Booked lecture room was successfully updated"
    click_on "Back"
  end

  test "destroying a Booked lecture room" do
    visit booked_lecture_rooms_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Booked lecture room was successfully destroyed"
  end
end
