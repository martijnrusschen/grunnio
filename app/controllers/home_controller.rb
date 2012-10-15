class HomeController < ApplicationController
  def show
    @companies = Company.all
    @people = Person.all
    @initiatives = Initiative.all
  end
end
