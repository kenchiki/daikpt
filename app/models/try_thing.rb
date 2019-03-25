class TryThing < ApplicationRecord
  # belongs_to :kpt, optional: true
  belongs_to :problem_thing, optional: true
end
