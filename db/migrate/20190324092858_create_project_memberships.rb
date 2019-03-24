class CreateProjectMemberships < ActiveRecord::Migration[5.2]
  def change
    create_table :project_memberships do |t|
      t.references :user, foreign_key: true, null: false
      t.references :project, foreign_key: true, null: false

      t.timestamps
    end
  end
end
