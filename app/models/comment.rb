class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :article

  def self.ransackable_attributes(auth_object = nil)
    ["upvote", "content", "article_id"]
  end

  def self.ransackable_associations(auth_object = nil)
    ["user"]
  end
end
