require "minitest_helper"

describe InitiativesController do

  before do
    @initiative = Initiative.new
  end

  it "must get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:initiatives)
  end

  it "must get new" do
    get :new
    assert_response :success
  end

  it "must create initiative" do
    assert_difference('Initiative.count') do
      post :create, initiative: @initiative.attributes
    end

    assert_redirected_to admin_initiative_path(assigns(:initiative))
  end

  it "must show initiative" do
    get :show, id: @initiative.to_param
    assert_response :success
  end

  it "must get edit" do
    get :edit, id: @initiative.to_param
    assert_response :success
  end

  it "must update initiative" do
    put :update, id: @initiative.to_param, initiative: @initiative.attributes
    assert_redirected_to admin_initiative_path(assigns(:initiative))
  end

  it "must destroy initiative" do
    assert_difference('Initiative.count', -1) do
      delete :destroy, id: @initiative.to_param
    end

    assert_redirected_to admin_initiatives_path
  end

end
