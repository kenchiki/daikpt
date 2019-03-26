class TryThing < ApplicationRecord
  belongs_to :problem_thing, optional: true

  validates :content, true
end
