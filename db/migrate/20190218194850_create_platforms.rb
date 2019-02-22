class CreatePlatforms < ActiveRecord::Migration[5.1]
  def change
    create_table :platforms do |t|
      t.string :platform
      t.string :product
      t.integer :subscription_id

      t.timestamps
    end
  end
end
