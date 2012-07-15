class Milestone
  include Mongoid::Document

  field :title
  field :date, type: DateTime

  belongs_to :company
end
