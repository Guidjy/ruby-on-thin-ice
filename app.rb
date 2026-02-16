# frozen_string_literal: true

require_relative 'app/models/user'
require_relative 'app/models/post'

def main
  user1 = User.new(id: 1, name: 'Guidjy')
  user2 = User.new(id: 2, name: 'Nari')
  post1 = Post.new(title: 'ah yom', body: 'I got a million to choose from', author_id: user1.id)
  post2 = Post.new(title: 'title', body: 'body', author_id: user2.id)

  user1.save
  user2.save
  post1.save
  post2.save

  puts Post.find_by_author_id(id: user1.id)
end

main
