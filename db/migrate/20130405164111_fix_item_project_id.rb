class FixItemProjectId < ActiveRecord::Migration
  def up
    remove_column :items, :projectid
  end
end
