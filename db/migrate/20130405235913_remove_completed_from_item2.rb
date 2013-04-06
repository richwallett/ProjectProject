class RemoveCompletedFromItem2 < ActiveRecord::Migration
  def up
    remove_column :items, :completed
  end
end
