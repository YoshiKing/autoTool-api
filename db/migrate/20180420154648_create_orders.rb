class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.string :order_id
      t.string :user_id
      t.string :site_id
      t.string :item_code
      t.string :item_name
      t.string :first_name
      t.string :last_name
      t.string :address_1
      t.string :address_2
      t.string :address_3
      t.string :address_4

      t.timestamps
    end
  end
end
