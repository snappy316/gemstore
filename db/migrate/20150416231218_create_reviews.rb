class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :stars
      t.string :body
      t.string :author
      t.belongs_to :product, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
