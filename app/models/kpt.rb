class Kpt < ApplicationRecord
  has_many :keep_things, inverse_of: :kpt
  has_many :problem_things, inverse_of: :kpt
  has_many :try_things, through: :problem_things
  accepts_nested_attributes_for :keep_things, allow_destroy: true
  accepts_nested_attributes_for :problem_things, allow_destroy: true
  belongs_to :project

  def build_relation_things
    keep_things.build
    problem_thing = problem_things.build
    problem_thing.try_things.build
  end
end
