class AddAttributesToProduct < ActiveRecord::Migration
  def change
    add_column :products, :shine, :string
    add_column :products, :rarity, :string
    add_column :products, :color, :string
    add_column :products, :faces, :string
  end
end
