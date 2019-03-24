class Kpt < ApplicationRecord
  has_many :keep_things
  has_many :problem_things
  has_many :try_things
  belongs_to :project
  accepts_nested_attributes_for :keep_things, allow_destroy: true
  accepts_nested_attributes_for :problem_things, allow_destroy: true
end
