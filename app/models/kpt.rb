class Kpt < ApplicationRecord
  has_many :keep_things
  belongs_to :project
  accepts_nested_attributes_for :keep_things, allow_destroy: true
end
