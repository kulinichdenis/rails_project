class AddPicturesToArticle < ActiveRecord::Migration
  def change
    add_column :articles, :pictures, :json
  end
end
