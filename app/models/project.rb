class Project < ApplicationRecord
  has_many :project_memberships, dependent: :destroy
  has_many :users, through: :project_memberships
  has_many :kpts, dependent: :destroy

  validates :name, presence: true

  def last_kpt
    kpts.order(created_at: :desc).last
  end
end
