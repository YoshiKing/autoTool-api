class CreateLinks < ActiveRecord::Migration[5.1]
  def change
    create_table :links do |t|
      t.string :user_id
      t.string :site_id
      t.string :usable_flg
      t.string :del_flg

      t.timestamps
    end
  end
end
