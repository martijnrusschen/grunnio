class ResourceController < ApplicationController
  inherit_resources
  respond_to :html, :json
end
