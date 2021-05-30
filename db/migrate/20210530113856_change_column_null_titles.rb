class ChangeColumnNullTitles < ActiveRecord::Migration[5.2]
  def change
    change_column_null :reports, :title, false
    change_column_null :reports, :content, false
  end
end
