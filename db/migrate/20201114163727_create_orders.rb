class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :phone
      t.string :address
      t.integer :qty
      t.string :size
      t.references :product, null: false, foreign_key: true

      t.timestamps
    end
  end
end
