class Admin::DashboardController < Admin::ApplicationController
  # load_and_authorize_resource :class => "Product"

  def show
    @companies = Company.all
    @initiatives = Initiative.all
    @people = Person.all
    @jobs = Job.all
  end
end
