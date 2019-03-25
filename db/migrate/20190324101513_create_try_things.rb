class CreateTryThings < ActiveRecord::Migration[5.2]
  def change
    create_table :try_things do |t|
      t.text :content, null: false

      t.timestamps
    end
  end
end
