class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.integer :total, default: 0
      t.integer :user_id
      t.string :billing_name
      t.string :billing_address
      t.string :receive_name
      t.string :receive_address
      t.timestamps
    end
  end
end
