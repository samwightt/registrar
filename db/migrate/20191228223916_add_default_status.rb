class AddDefaultStatus < ActiveRecord::Migration[6.0]
  def change
    change_column :hackathons, :status, :integer, default: 0
  end
end
