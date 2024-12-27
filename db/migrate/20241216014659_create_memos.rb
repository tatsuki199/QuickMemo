class CreateMemos < ActiveRecord::Migration[7.0]
  def change
    create_table :memos do |t|
      t.string :title, null: false
      t.text :detail, null: false
      t.integer :category_id, null: false
      t.integer :importance_id, null: false
      
      t.timestamps
    end
  end
end
