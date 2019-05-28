class TryThing < ApplicationRecord
  belongs_to :problem_thing, optional: true
  belongs_to :kpt

  validates :content, presence: true

  # create_keep!でいいのでは
  # keep!でもいいかも？
  # updateも入っているのでメソッド名を工夫する必要がある
  def create_keep_things_from_try_thing!
    ActiveRecord::Base.transaction do
      # problem_thing.kptが適用されているかもテストする
      # belongs_toでkptが必要ではないか？
      # problem_thing.kptがオプショナルだから落ちるかもしれない
      kpt.keep_tings.create!(content: content)
      KeepThing.create!(content: content, kpt: problem_thing.kpt)
      self.update!(complete: true)
    end
  end
end
