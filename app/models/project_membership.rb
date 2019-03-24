class ProjectMembership < ApplicationRecord
  belongs_to :user, inverse_of: :project_memberships
  belongs_to :project, inverse_of: :project_memberships
end
