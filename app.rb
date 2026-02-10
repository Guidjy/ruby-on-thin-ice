# frozen_string_literal: true

require_relative 'app/models/user'
require_relative 'app/models/post'

def main
  user1 = User.new(id: 1, name: 'Guidjy')
  post1 = Post.new(title: 'ah yom', body: 'I got a million to choose from', author_id: user1.id)

  user1.print
  post1.print
end

main
