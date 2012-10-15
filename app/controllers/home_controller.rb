class HomeController < ApplicationController
  def show
    @companies = Company.all
    @people = Person.all
  end
end
