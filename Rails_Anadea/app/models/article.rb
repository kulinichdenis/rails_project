class Article < ActiveRecord::Base
  validates :title, :content, :user_id,  presence: true 
  belongs_to :user 
  has_many :sub_articles
  has_and_belongs_to_many :categories
end
