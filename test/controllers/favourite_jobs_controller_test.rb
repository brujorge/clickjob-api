require 'test_helper'

class FavouriteJobsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @favourite_job = favourite_jobs(:one)
  end

  test "should get index" do
    get favourite_jobs_url
    assert_response :success
  end

  test "should get new" do
    get new_favourite_job_url
    assert_response :success
  end

  test "should create favourite_job" do
    assert_difference('FavouriteJob.count') do
      post favourite_jobs_url, params: { favourite_job: { benefits: @favourite_job.benefits, city: @favourite_job.city, company_description: @favourite_job.company_description, company_name: @favourite_job.company_name, country: @favourite_job.country, description: @favourite_job.description, functions: @favourite_job.functions, job_id: @favourite_job.job_id, logo_url: @favourite_job.logo_url, modality: @favourite_job.modality, remote: @favourite_job.remote, salary: @favourite_job.salary, seniority: @favourite_job.seniority, title: @favourite_job.title, user_id: @favourite_job.user_id } }
    end

    assert_redirected_to favourite_job_url(FavouriteJob.last)
  end

  test "should show favourite_job" do
    get favourite_job_url(@favourite_job)
    assert_response :success
  end

  test "should get edit" do
    get edit_favourite_job_url(@favourite_job)
    assert_response :success
  end

  test "should update favourite_job" do
    patch favourite_job_url(@favourite_job), params: { favourite_job: { benefits: @favourite_job.benefits, city: @favourite_job.city, company_description: @favourite_job.company_description, company_name: @favourite_job.company_name, country: @favourite_job.country, description: @favourite_job.description, functions: @favourite_job.functions, job_id: @favourite_job.job_id, logo_url: @favourite_job.logo_url, modality: @favourite_job.modality, remote: @favourite_job.remote, salary: @favourite_job.salary, seniority: @favourite_job.seniority, title: @favourite_job.title, user_id: @favourite_job.user_id } }
    assert_redirected_to favourite_job_url(@favourite_job)
  end

  test "should destroy favourite_job" do
    assert_difference('FavouriteJob.count', -1) do
      delete favourite_job_url(@favourite_job)
    end

    assert_redirected_to favourite_jobs_url
  end
end
