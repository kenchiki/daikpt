class AddColumnToTryTthing < ActiveRecord::Migration[5.2]
  def change
    add_column :try_things, :complete, :boolean, default: false
  end
end
