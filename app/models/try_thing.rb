class TryThing < ApplicationRecord
  belongs_to :problem_thing, optional: true

  validates :content, presence: true
end
