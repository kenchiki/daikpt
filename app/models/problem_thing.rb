class ProblemThing < ApplicationRecord
  has_many :try_things
  belongs_to :kpt
  accepts_nested_attributes_for :try_things, allow_destroy: true
end
