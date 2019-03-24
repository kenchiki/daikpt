class AddProblemIdToTryThings < ActiveRecord::Migration[5.2]
  def change
    add_column :try_things, :problem_thing_id, :integer, foreign_key: true
  end
end
