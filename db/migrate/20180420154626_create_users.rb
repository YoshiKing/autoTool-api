class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :user_id
      t.string :password
      t.string :mail
      t.timestamp :last_login
      t.string :del_flg
      t.string :token

      t.timestamps
    end
    add_index :users, :token, unique: true
  end
end
