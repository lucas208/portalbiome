class CreateIndividualwritings < ActiveRecord::Migration[5.2]
  def change
    create_table :individualwritings do |t|
      t.references :individual, index: true
      t.references :writing, index: true

      t.timestamps
    end
  end
end
