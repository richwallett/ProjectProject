class AddCompletedBooleanToItem < ActiveRecord::Migration
  def change
    change_table :items do |t|
      t.boolean :completed
    end
  end
end
