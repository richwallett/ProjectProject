class AddGoodColumnToProjects < ActiveRecord::Migration
    def change
      change_table :projects do |t|
        t.references :team
      end
  end
end
