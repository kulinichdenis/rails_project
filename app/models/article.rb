class Article < ActiveRecord::Base
  validates :title, :content, :user_id,  presence: true
  belongs_to :user
  has_many :sub_articles, dependent: :destroy
  has_and_belongs_to_many :categories
  has_many :images
  accepts_nested_attributes_for :images
end
