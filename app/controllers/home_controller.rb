class HomeController < ApplicationController
  authorize_resource  class: "HomeController"

  def show
  end
end
