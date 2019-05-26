class TryThing < ApplicationRecord
  belongs_to :problem_thing, optional: true

  validates :content, presence: true

  def create_keep_things_from_try_thing!
    transaction do
      KeepThing.create!(content: content, kpt: problem_thing.kpt)
      self.update!(complete: true)
    end
  end
end
