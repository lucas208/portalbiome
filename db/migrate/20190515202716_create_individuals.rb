class CreateIndividuals < ActiveRecord::Migration[5.2]
  def change
    create_table :individuals do |t|
      t.string :name
      t.string :linklattes
      t.string :foto
      t.string :email
      t.references :individualcategory, foreign_key: true

      t.timestamps
    end
  end
end
