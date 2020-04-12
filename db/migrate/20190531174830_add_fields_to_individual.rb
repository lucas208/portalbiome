class AddFieldsToIndividual < ActiveRecord::Migration[5.2]
  def change
    add_column :individuals, :linksigaa, :string
    add_column :individuals, :linkscholar, :string
    add_column :individuals, :linkpubmed, :string
  end
end
