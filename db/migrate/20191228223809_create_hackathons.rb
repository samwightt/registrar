class CreateHackathons < ActiveRecord::Migration[6.0]
  def change
    create_table :hackathons do |t|
      t.string :name
      t.string :description
      t.date :start_date
      t.date :end_date
      t.integer :status

      t.timestamps
    end
  end
end
