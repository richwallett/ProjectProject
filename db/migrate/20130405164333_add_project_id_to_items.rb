class AddProjectIdToItems < ActiveRecord::Migration
  def change
    change_table :items do |t|
      t.integer :project_id
    end
  end
end
