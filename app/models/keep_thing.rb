class KeepThing < ApplicationRecord
  belongs_to :kpt, inverse_of: :keep_things

  validates :content, presence: true
end
