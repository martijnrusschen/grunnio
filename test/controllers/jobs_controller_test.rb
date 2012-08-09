require "minitest_helper"

describe JobsController do

  before do
    @job = Job.new
  end

  it "must get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:jobs)
  end

  it "must get new" do
    get :new
    assert_response :success
  end

  it "must create job" do
    assert_difference('Job.count') do
      post :create, job: @job.attributes
    end

    assert_redirected_to admin_job_path(assigns(:job))
  end

  it "must show job" do
    get :show, id: @job.to_param
    assert_response :success
  end

  it "must get edit" do
    get :edit, id: @job.to_param
    assert_response :success
  end

  it "must update job" do
    put :update, id: @job.to_param, job: @job.attributes
    assert_redirected_to admin_job_path(assigns(:job))
  end

  it "must destroy job" do
    assert_difference('Job.count', -1) do
      delete :destroy, id: @job.to_param
    end

    assert_redirected_to admin_jobs_path
  end

end
