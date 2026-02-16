# frozen_string_literal: true

require_relative 'app/models/user'
require_relative 'app/models/post'

def main
  user1 = User.new(id: 1, name: 'Guidjy')
  post1 = Post.new(title: 'ah yom', body: 'I got a million to choose from', author_id: user1.id)
  post2 = Post.new(title: 'title', body: 'body', author_id: user1.id)

  user1.save
  post1.save
  post2.save

  Post.all.each {|post| post.print }
end

main
