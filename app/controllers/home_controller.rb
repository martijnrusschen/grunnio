class HomeController < ApplicationController
  def show
    @companies = Company.all
  end
end
