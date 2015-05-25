class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.string :title
      t.string :slug, unique: true
      t.text :content
      t.references :page_category, index: true, foreign_key: true
      t.boolean :publish

      t.timestamps null: false
    end
    add_index :pages, :slug
  end
end
