class CreateIndividualcategories < ActiveRecord::Migration[5.2]
  def change
    create_table :individualcategories do |t|
      t.string :name

      t.timestamps
    end
  end
end
