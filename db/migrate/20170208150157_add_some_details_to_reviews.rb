class AddSomeDetailsToReviews < ActiveRecord::Migration[5.0]
  def change
  	add_column :reviews, :stars, :float, :default => 5.0
  	add_column :reviews, :good, :boolean, :default => false
  	add_column :reviews, :fair, :boolean, :default => false
  	add_column :reviews, :bad, :boolean, :default => false
  end
end
