class SubArticle < ActiveRecord::Base
  belongs_to :user
  belongs_to :article

  validates :content, :user_id, :article_id, presence: true
end
