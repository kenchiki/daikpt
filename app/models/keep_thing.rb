class KeepThing < ApplicationRecord
  belongs_to :kpt

  validates :content, presence: true
end
