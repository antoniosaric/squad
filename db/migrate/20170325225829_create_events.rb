class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.string :name
      t.string :location
      t.string :description
      t.string :date
      t.string :reg_fee
      t.references :team

      t.timestamps
    end
  end
end
