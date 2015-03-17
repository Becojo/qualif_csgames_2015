class CreateCompetitions < ActiveRecord::Migration
  def change
    create_table :competitions do |t|
      t.string :name
      t.string :date
      t.string :time

      t.timestamps
    end
  end
end
