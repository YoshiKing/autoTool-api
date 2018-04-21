class CreateSites < ActiveRecord::Migration[5.1]
  def change
    create_table :sites do |t|
      t.string :site_id
      t.string :name
      t.string :url
      t.string :del_flg

      t.timestamps
    end
  end
end
