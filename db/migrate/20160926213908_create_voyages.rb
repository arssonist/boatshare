class CreateVoyages < ActiveRecord::Migration[5.0]
  def change
    create_table :voyages do |t|
      t.string :title
      t.integer :captain_id

      t.timestamps
    end
  end
end
