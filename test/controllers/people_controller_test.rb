require "minitest_helper"

describe PeopleController do

  before do
    @person = Person.new
  end

  it "must get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:people)
  end

  it "must get new" do
    get :new
    assert_response :success
  end

  it "must create person" do
    assert_difference('Person.count') do
      post :create, person: @person.attributes
    end

    assert_redirected_to person_path(assigns(:person))
  end

  it "must show person" do
    get :show, id: @person.to_param
    assert_response :success
  end

  it "must get edit" do
    get :edit, id: @person.to_param
    assert_response :success
  end

  it "must update person" do
    put :update, id: @person.to_param, person: @person.attributes
    assert_redirected_to person_path(assigns(:person))
  end

  it "must destroy person" do
    assert_difference('Person.count', -1) do
      delete :destroy, id: @person.to_param
    end

    assert_redirected_to people_path
  end

end
