# require 'rails_helper'

# RSpec.describe 'Show Page', type: :feature do
#   before(:each) do
#     @user = User.create(name: 'Tania Brishty', image: 'https://example.jpg',
#                         bio: 'She is a software engineer', posts_counter: 10)
#     @post1 = Post.create(title: 'test post-1', description: 'test text-1', comments_counter: 1,
#                          likes_counter: 2, author: @user)
#     @post2 = Post.create(title: 'test post-2', description: 'test text-2', comments_counter: 1,
#                          likes_counter: 2, author: @user)
#     @post3 = Post.create(title: 'test post-3', description: 'test text-3', comments_counter: 1,
#                          likes_counter: 2, author: @user)
#     @post4 = Post.create(title: 'test post-4', description: 'test text-4', comments_counter: 1,
#                          likes_counter: 2, author: @user)

#     visit user_path(@user)
#   end

#   it 'Display the user\'s profile picture.' do
#     expect(page.html).to include(@user.image)
#   end

#   it 'Display the user\'s username.' do
#     expect(page).to have_content(@user.name)
#   end

#   it 'Display the number of posts the user has written.' do
#     expect(page.html).to have_content(@user.posts_counter)
#   end

#   it 'Display the user\'s bio.' do
#     page.has_content?(@user.bio)
#   end

#   it 'Display the user\'s first 3 posts.' do
#     recent_posts = @user.recent_posts.limit(3)
#     recent_posts.each do |post|
#       expect(page).to have_content(post.title)
#     end
#   end

#   it 'Display a button that lets me view all of a user\'s posts.' do
#     page.has_button?('See all posts')
#   end

#   it 'Redirect to the user\'s post\'s index page when I clicking on see all posts.' do
#     within('.see-posts') do
#       click_link('See all posts')
#     end
#     expect(current_path).to eq(user_posts_path(@user))
#   end

#   it 'Redirects to the post\'s show page when clicking on a user\'s post title' do
#     clicked_post = nil
#     @user.recent_posts.each do |post|
#       if post.title == @post2.title
#         clicked_post = post
#         break
#       end
#     end
#     click_link(clicked_post.title)

#     expect(current_path).to eq(user_post_path(@user, clicked_post))
#   end
# end
