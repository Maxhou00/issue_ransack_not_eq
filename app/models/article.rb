class Article < ApplicationRecord
  has_many   :comments

  def self.ransackable_attributes(auth_object = nil)
    ["title", "content"]
  end

  def self.ransackable_associations(auth_object = nil)
    ["comments"]
  end
end
