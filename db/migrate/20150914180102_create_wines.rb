class CreateWines < ActiveRecord::Migration
  def change
    create_table :wines do |t|
      t.string :country
      t.string :region
      t.string :producer
      t.string :vineyard
      t.string :predominant_variety
      t.integer :vintage

      t.timestamps null: false
    end
  end
end
