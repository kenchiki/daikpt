class CreateKeepThings < ActiveRecord::Migration[5.2]
  def change
    create_table :keep_things do |t|
      t.text :content, null: false
      t.boolean :complete, null: false, default: false
      t.references :kpt, foreign_key: true, null: false

      t.timestamps
    end
  end
end
