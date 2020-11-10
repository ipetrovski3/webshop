class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.integer :price
      t.boolean :featured
      t.references :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end