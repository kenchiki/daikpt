class ProblemThing < ApplicationRecord
  has_many :try_things, inverse_of: :problem_thing
  belongs_to :kpt, optional: true
  accepts_nested_attributes_for :try_things, reject_if: :all_blank

  validates :content, presence: :true
end
