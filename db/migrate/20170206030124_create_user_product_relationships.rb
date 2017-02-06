class CreateUserProductRelationships < ActiveRecord::Migration[5.0]
  def change
    create_table :user_product_relationships do |t|
      t.integer :user_id
      t.integer :product_id

      t.timestamps
    end
  end
end
