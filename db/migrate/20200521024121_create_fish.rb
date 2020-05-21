class CreateFish < ActiveRecord::Migration[5.1]
  def change
    create_table :fish do |t|
      t.string :name
      t.monetize :sell_value
      t.string :location
      t.string :active_hours
      t.string :active_months
      t.string :shadow_size
      t.string :image_url
      t.timestamps
    end
  end
end
