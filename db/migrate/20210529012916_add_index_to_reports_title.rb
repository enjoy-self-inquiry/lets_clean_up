class AddIndexToReportsTitle < ActiveRecord::Migration[5.2]
  def change
    add_index :reports, :title, unique: true
  end
end
