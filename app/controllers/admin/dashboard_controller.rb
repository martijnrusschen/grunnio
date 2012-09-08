class Admin::DashboardController < Admin::ApplicationController
    def show
      @companies = Company.all
      @initiatives = Initiative.all
      @people = Person.all
      @jobs = Job.all
    end
end
