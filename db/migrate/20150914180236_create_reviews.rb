class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :comments
      t.string :paired_with
      t.string :rating
      t.references :wine, index: true, foreign_key: true


      t.timestamps null: false
    end
  end
end
