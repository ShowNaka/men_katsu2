class CreateShops < ActiveRecord::Migration[5.2]
  def change
    create_table :shops do |t|
      t.string        :name,          null: false
      t.integer       :prefecture_id,    null: false
      t.string        :address,          null: false
      t.string        :building_name
      t.integer       :type_id,          null: false
      t.text          :feelings
      t.timestamps
    end
  end
end
