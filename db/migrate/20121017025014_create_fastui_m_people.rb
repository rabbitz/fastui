class CreateFastuiMPeople < ActiveRecord::Migration
  def change
    create_table :fastui_m_people do |t|
      t.string :name, :limit => 60, :null => false

      t.integer :actived,:default => 0
      t.integer :org_id, :default => 0
      t.integer :createdby, :default => 0
      t.integer :updatedby, :default => 0

      t.timestamps
    end
  end
end
