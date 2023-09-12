class AddUserArticleComments < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :firstname
      t.string :lastname
      t.string :email

      t.timestamps
    end

    create_table :articles do |t|
      t.string :title
      t.string :content

      t.timestamps
    end

    create_table :comments do |t|
      t.belongs_to :article
      t.belongs_to :user

      t.string :content
      t.string :upvote
    end
  
  end
end
