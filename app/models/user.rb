class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :project_memberships, dependent: :destroy
  has_many :projects, through: :project_memberships

  scope :keep_things, -> () {
    left_joins(projects: [kpts: :keep_things]).select("keep_things.*")
  }

  scope :try_things, -> () {
    left_joins(projects: [kpts: [problem_things: :try_things]]).select("try_things.*")
  }
end
