class CreateRestaurants < ActiveRecord::Migration[5.2]
  def change
    create_table :restaurants do |t|
      t.string "name", null: false
      t.string "tabelog"
      t.string "shopurl"
      t.text "content", null: false
      t.string "list_id"
      t.index "list_id", name: "index_products_on_user_id"
      t.timestamps
    end
  end
end
