class Activity
  include Mongoid::Document

  field :title
  field :time, type: DateTime

  belongs_to :initiative

  #TODO: Implement ice_cube gem for scheduling etc
end
