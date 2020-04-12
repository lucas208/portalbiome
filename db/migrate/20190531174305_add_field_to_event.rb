class AddFieldToEvent < ActiveRecord::Migration[5.2]
  def change
    add_column :events, :finaldate, :datetime
  end
end
