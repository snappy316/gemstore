class ChangeReviewStarsToInteger < ActiveRecord::Migration
  def change
    change_column :reviews, :stars, 'integer USING CAST(stars AS integer)'
  end
end
