require "application_system_test_case"

class IndividualcategoriesTest < ApplicationSystemTestCase
  setup do
    @individualcategory = individualcategories(:one)
  end

  test "visiting the index" do
    visit individualcategories_url
    assert_selector "h1", text: "Individualcategories"
  end

  test "creating a Individualcategory" do
    visit individualcategories_url
    click_on "New Individualcategory"

    fill_in "Name", with: @individualcategory.name
    click_on "Create Individualcategory"

    assert_text "Individualcategory was successfully created"
    click_on "Back"
  end

  test "updating a Individualcategory" do
    visit individualcategories_url
    click_on "Edit", match: :first

    fill_in "Name", with: @individualcategory.name
    click_on "Update Individualcategory"

    assert_text "Individualcategory was successfully updated"
    click_on "Back"
  end

  test "destroying a Individualcategory" do
    visit individualcategories_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Individualcategory was successfully destroyed"
  end
end
