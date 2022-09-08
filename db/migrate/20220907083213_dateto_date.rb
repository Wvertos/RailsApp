class DatetoDate < ActiveRecord::Migration[7.0]
  def change
    change_column :entries, :date, :date
  end
end
