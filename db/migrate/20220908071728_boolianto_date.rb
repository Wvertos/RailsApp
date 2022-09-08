class BooliantoDate < ActiveRecord::Migration[7.0]
  def change
    change_column :entries, :date, :boolean
  end
end
