class RemoveBadColumnFromProject2 < ActiveRecord::Migration
  def change
    remove_column :projects, :team_id_id
  end

end
