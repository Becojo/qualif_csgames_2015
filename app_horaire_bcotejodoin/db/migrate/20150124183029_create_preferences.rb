class CreatePreferences < ActiveRecord::Migration
  def change
    create_table :preferences do |t|
      t.integer :participant_id
      t.integer :competition_id
      t.integer :index

      t.timestamps
    end
  end
end
