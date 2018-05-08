require "application_system_test_case"

class ProspectsTest < ApplicationSystemTestCase
  setup do
    @prospect = prospects(:one)
  end

  test "visiting the index" do
    visit prospects_url
    assert_selector "h1", text: "Prospects"
  end

  test "creating a Prospect" do
    visit prospects_url
    click_on "New Prospect"

    fill_in "Comment", with: @prospect.comment
    fill_in "Job Title", with: @prospect.job_title
    fill_in "Link", with: @prospect.link
    fill_in "Location", with: @prospect.location
    fill_in "Technologies", with: @prospect.technologies
    click_on "Create Prospect"

    assert_text "Prospect was successfully created"
    click_on "Back"
  end

  test "updating a Prospect" do
    visit prospects_url
    click_on "Edit", match: :first

    fill_in "Comment", with: @prospect.comment
    fill_in "Job Title", with: @prospect.job_title
    fill_in "Link", with: @prospect.link
    fill_in "Location", with: @prospect.location
    fill_in "Technologies", with: @prospect.technologies
    click_on "Update Prospect"

    assert_text "Prospect was successfully updated"
    click_on "Back"
  end

  test "destroying a Prospect" do
    visit prospects_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Prospect was successfully destroyed"
  end
end
