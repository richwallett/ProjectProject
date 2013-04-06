class AddReferencesForTeamToProject < ActiveRecord::Migration
  def change
    change_table :projects do |t|
      t.references :team_id
    end
  end
end
