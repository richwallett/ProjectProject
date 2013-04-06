class RemoveCompletedFromItems < ActiveRecord::Migration
  def add
    remove_column :items, :completed
  end
  
  
end
