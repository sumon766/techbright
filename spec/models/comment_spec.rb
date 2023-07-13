require 'rails_helper'

RSpec.describe Comment, type: :model do
  describe 'associations' do
    it 'belongs to a post' do
      post = Post.new
      comment = Comment.new(post: post)
      expect(comment.post).to eq(post)
    end
  end

  describe 'validations' do
    it 'requires content to be present' do
      comment = Comment.new
      comment.valid?
      expect(comment.errors[:content]).to include("can't be blank")
    end
  end

  describe 'update posts counter' do
    let(:user) { User.create(name: 'Man', image: 'photo', bio: 'bio', posts_counter: 0) }
    let(:post) do
      Post.create(title: 'post', description: 'This is my post', author_id: user.id, comments_counter: 0,
                  likes_counter: 0)
    end

    subject { described_class.create(content: 'My comment', post: post, author_id: user.id) }

    it 'posts comments count should increase' do
      expect do
        subject
        subject.update_post_comment_counter
        post.reload
      end.to change { post.comments_counter }.by(1)
    end
  end
end
