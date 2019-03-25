class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :project_memberships, dependent: :destroy
  has_many :projects, through: :project_memberships
  has_many :kpts, through: :projects, source: :kpts
  has_many :keep_things, through: :kpts, source: :keep_things
  has_many :problem_things, through: :kpts, source: :problem_things
  has_many :try_things, through: :kpts, source: :try_things
end
