class CreateBests < ActiveRecord::Migration[5.2]
  def change
    create_table :bests do |t|
      t.references :user, null:false, index: {unique: true}, foreign_key: { on_delete: :cascade }
      t.references :restaurant, null:false, index: true, foreign_key: { on_delete: :cascade }
      t.timestamps
    end
  end
end
