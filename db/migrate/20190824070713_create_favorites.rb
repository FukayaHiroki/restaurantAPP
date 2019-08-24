class CreateFavorites < ActiveRecord::Migration[5.2]
  def change
    create_table :favorites do |t|
      t.references :user, null:false, index: true, foreign_key: { on_delete: :cascade }
      t.references :restaurant, null:false, index: true, foreign_key: { on_delete: :cascade }
      t.timestamps
    end
  end
end
