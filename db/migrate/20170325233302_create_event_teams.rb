class CreateEventTeams < ActiveRecord::Migration[5.0]
  def change
    create_table :event_teams do |t|
      t.references :team
      t.references :event
      
      t.timestamps
    end
  end
end
