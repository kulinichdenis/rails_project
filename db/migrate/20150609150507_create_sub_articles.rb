class CreateSubArticles < ActiveRecord::Migration
  def change
    create_table :sub_articles do |t|
      t.string :title
      t.text :content
      t.integer :user_id
      t.integer :article_id

      t.timestamps null: false
    end
  end
end
