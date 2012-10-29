class HomeController < ApplicationController
  def show
    @companies = Company.published
    @people = Person.published
    @initiatives = Initiative.published
  end
end
