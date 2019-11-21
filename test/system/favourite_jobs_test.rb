require "application_system_test_case"

class FavouriteJobsTest < ApplicationSystemTestCase
  setup do
    @favourite_job = favourite_jobs(:one)
  end

  test "visiting the index" do
    visit favourite_jobs_url
    assert_selector "h1", text: "Favourite Jobs"
  end

  test "creating a Favourite job" do
    visit favourite_jobs_url
    click_on "New Favourite Job"

    fill_in "Benefits", with: @favourite_job.benefits
    fill_in "City", with: @favourite_job.city
    fill_in "Company description", with: @favourite_job.company_description
    fill_in "Company name", with: @favourite_job.company_name
    fill_in "Country", with: @favourite_job.country
    fill_in "Description", with: @favourite_job.description
    fill_in "Functions", with: @favourite_job.functions
    fill_in "Job", with: @favourite_job.job_id
    fill_in "Logo url", with: @favourite_job.logo_url
    fill_in "Modality", with: @favourite_job.modality
    check "Remote" if @favourite_job.remote
    fill_in "Salary", with: @favourite_job.salary
    fill_in "Seniority", with: @favourite_job.seniority
    fill_in "Title", with: @favourite_job.title
    fill_in "User", with: @favourite_job.user_id
    click_on "Create Favourite job"

    assert_text "Favourite job was successfully created"
    click_on "Back"
  end

  test "updating a Favourite job" do
    visit favourite_jobs_url
    click_on "Edit", match: :first

    fill_in "Benefits", with: @favourite_job.benefits
    fill_in "City", with: @favourite_job.city
    fill_in "Company description", with: @favourite_job.company_description
    fill_in "Company name", with: @favourite_job.company_name
    fill_in "Country", with: @favourite_job.country
    fill_in "Description", with: @favourite_job.description
    fill_in "Functions", with: @favourite_job.functions
    fill_in "Job", with: @favourite_job.job_id
    fill_in "Logo url", with: @favourite_job.logo_url
    fill_in "Modality", with: @favourite_job.modality
    check "Remote" if @favourite_job.remote
    fill_in "Salary", with: @favourite_job.salary
    fill_in "Seniority", with: @favourite_job.seniority
    fill_in "Title", with: @favourite_job.title
    fill_in "User", with: @favourite_job.user_id
    click_on "Update Favourite job"

    assert_text "Favourite job was successfully updated"
    click_on "Back"
  end

  test "destroying a Favourite job" do
    visit favourite_jobs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Favourite job was successfully destroyed"
  end
end
