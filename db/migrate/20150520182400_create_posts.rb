class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.text :content
      t.references :user, index: true, foreign_key: true
      t.boolean :publish, default: false
      t.references :post_category, index: true, foreign_key: true
      t.boolean :comment, default: false

      t.timestamps null: false
    end
  end
end
