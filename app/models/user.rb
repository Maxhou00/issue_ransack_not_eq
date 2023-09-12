class User < ApplicationRecord
  has_many :comments

  def self.ransackable_attributes(auth_object = nil)
    ["firstname", "lastname", "email"]
  end

  def self.ransackable_associations(auth_object = nil)
    [ "comments"]
  end
end
