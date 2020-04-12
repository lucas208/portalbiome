class CreateWritings < ActiveRecord::Migration[5.2]
  def change
    create_table :writings do |t|
      t.string :title
      t.string :link
      t.integer :year

      t.timestamps
    end
  end
end
