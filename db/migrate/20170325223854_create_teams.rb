class CreateTeams < ActiveRecord::Migration[5.0]
  def change
    create_table :teams do |t|
      t.string :name
      t.integer :event_id
      t.references :user
      t.references :event
      
      t.timestamps
    end
  end
end
