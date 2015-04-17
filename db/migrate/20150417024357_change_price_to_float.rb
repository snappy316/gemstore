class ChangePriceToFloat < ActiveRecord::Migration
  def change
    change_column :products, :price, 'numeric USING CAST(price AS numeric)'
  end
end
