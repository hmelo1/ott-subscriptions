class CreateCustomers < ActiveRecord::Migration[5.1]
  def change
    create_table :customers do |t|
      t.string :email
      t.string :city
      t.string :state
      t.string :country
      t.string :product_name
      t.string :platform
      t.string :subscribed_at
      t.string :billing_type

      t.timestamps
    end
  end
end
