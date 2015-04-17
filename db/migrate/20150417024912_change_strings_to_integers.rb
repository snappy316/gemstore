class ChangeStringsToIntegers < ActiveRecord::Migration
  def change
    change_column :products, :shine, 'integer USING CAST(shine AS integer)'
    change_column :products, :rarity, 'integer USING CAST(rarity AS integer)'
    change_column :products, :faces, 'integer USING CAST(faces AS integer)'
  end
end
