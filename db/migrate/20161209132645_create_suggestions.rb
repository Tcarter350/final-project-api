class CreateSuggestions < ActiveRecord::Migration[5.0]
  def change
    create_table :suggestions do |t|
      t.references :post, foreign_key: true
      t.string :image
      t.string :link
      t.string :price

      t.timestamps
    end
  end
end
