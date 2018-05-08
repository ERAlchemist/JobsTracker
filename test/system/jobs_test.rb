require "application_system_test_case"

class JobsTest < ApplicationSystemTestCase
  setup do
    @job = jobs(:one)
  end

  test "visiting the index" do
    visit jobs_url
    assert_selector "h1", text: "Jobs"
  end

  test "creating a Job" do
    visit jobs_url
    click_on "New Job"

    fill_in "Comment", with: @job.comment
    fill_in "Cover Letter Used", with: @job.cover_letter_used
    fill_in "Date Applied", with: @job.date_applied
    fill_in "Heard Back", with: @job.heard_back
    fill_in "Job Title", with: @job.job_title
    fill_in "Link", with: @job.link
    fill_in "Listing Site", with: @job.listing_site
    fill_in "Location", with: @job.location
    fill_in "Remote Possible", with: @job.remote_possible
    fill_in "Reume Used", with: @job.reume_used
    fill_in "Technologies", with: @job.technologies
    click_on "Create Job"

    assert_text "Job was successfully created"
    click_on "Back"
  end

  test "updating a Job" do
    visit jobs_url
    click_on "Edit", match: :first

    fill_in "Comment", with: @job.comment
    fill_in "Cover Letter Used", with: @job.cover_letter_used
    fill_in "Date Applied", with: @job.date_applied
    fill_in "Heard Back", with: @job.heard_back
    fill_in "Job Title", with: @job.job_title
    fill_in "Link", with: @job.link
    fill_in "Listing Site", with: @job.listing_site
    fill_in "Location", with: @job.location
    fill_in "Remote Possible", with: @job.remote_possible
    fill_in "Reume Used", with: @job.reume_used
    fill_in "Technologies", with: @job.technologies
    click_on "Update Job"

    assert_text "Job was successfully updated"
    click_on "Back"
  end

  test "destroying a Job" do
    visit jobs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Job was successfully destroyed"
  end
end
