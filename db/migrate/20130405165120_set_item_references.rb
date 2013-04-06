class SetItemReferences < ActiveRecord::Migration
  def add
    remove_column :project_id
  end
end
