require "application_system_test_case"

class FloorsTest < ApplicationSystemTestCase
  setup do
    @floor = floors(:one)
  end

  test "visiting the index" do
    visit floors_url
    assert_selector "h1", text: "Floors"
  end

  test "creating a Floor" do
    visit floors_url
    click_on "New Floor"

    fill_in "Description", with: @floor.description
    fill_in "Name", with: @floor.name
    fill_in "Photo Url", with: @floor.photo_url
    fill_in "Price", with: @floor.price
    fill_in "Quantity", with: @floor.quantity
    click_on "Create Floor"

    assert_text "Floor was successfully created"
    click_on "Back"
  end

  test "updating a Floor" do
    visit floors_url
    click_on "Edit", match: :first

    fill_in "Description", with: @floor.description
    fill_in "Name", with: @floor.name
    fill_in "Photo Url", with: @floor.photo_url
    fill_in "Price", with: @floor.price
    fill_in "Quantity", with: @floor.quantity
    click_on "Update Floor"

    assert_text "Floor was successfully updated"
    click_on "Back"
  end

  test "destroying a Floor" do
    visit floors_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Floor was successfully destroyed"
  end
end
