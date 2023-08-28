class CreateFavorites < ActiveRecord::Migration[7.0]
  def change
    create_table :favorites do |t|
      t.string     :url,            null: false
      t.string     :name,           null: false
      t.integer    :priority_order, null: false
      t.text       :content,        null: false
      t.string     :update_check,   null: false, default: "no"
      t.references :user,           null: false, foreign_key: true
      t.timestamps
    end
  end
end
