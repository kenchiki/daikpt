class TryThing < ApplicationRecord
  belongs_to :kpt
  belongs_to :problem_thing, optional: true
end
