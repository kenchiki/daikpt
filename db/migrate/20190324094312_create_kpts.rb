class CreateKpts < ActiveRecord::Migration[5.2]
  def change
    create_table :kpts do |t|
      t.date :target_on, null: false
      t.text :description
      t.references :project, foreign_key: true, null: false

      t.timestamps
    end
  end
end
