class Like < ApplicationRecord
  belongs_to :author, class_name: 'User', foreign_key: 'author_id'
  belongs_to :post, foreign_key: 'post_id'

  attribute :user_id

  after_create :update_post_likes_counter
  after_destroy :update_post_likes_counter

  def update_post_likes_counter
    post.update(likes_counter: post.likes.count)
  end
end
