class CreateDetails < ActiveRecord::Migration[5.2]
  def change
    create_table :details do |t|
      t.references :restaurant, foregin_key: true
      t.integer :genre, null: false
      t.integer :scene, null: false
      t.timestamps
    end
  end
end
