class CreateAssignments < ActiveRecord::Migration
  def change
    create_table :assignments do |t|
      t.integer :participant_id
      t.integer :competition_id

      t.timestamps
    end
  end
end
