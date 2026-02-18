# frozen_string_literal: true

require_relative 'console'
require_relative 'menu'
require_relative '../models/user'
require_relative '../models/post'


# Users
def create_user
  id = User.all.length
  name = Console.get_input ">name: "

  new_user = User.new(id: id, name: name)
  new_user.save
end

def list_users
  users = User.all
  users.each { |user| user.print}
end

# Posts

def create_post
  title = Console.get_input ">title: "
  body = Console.get_input ">body: "
  author_id = Console.get_input(">author_id: ").to_i

  new_post = Post.new(title: title, body: body, author_id: author_id)
  new_post.save
end

def list_posts
  posts = Post.all
  posts.each { |post| post.print}
end

def find_posts_by_author_id
  author_id = Console.get_input(">author_id: ").to_i
  posts = Post.find_by_author_id(id: author_id)
  posts.each { |post| post.print}
end

# actions
MAIN_MENU_ACTIONS = {
  1 => -> (menu) { menu.switch_menu(target_menu: :user_actions) },
  2 => -> (menu) { menu.switch_menu(target_menu: :post_actions) },
  3 => -> { exit }
}

USER_ACTIONS = {
  1 => -> { create_user },
  2 => -> { list_users },
  3 => -> (menu) { menu.switch_menu(target_menu: :main_menu) }
}

POST_ACTIONS = {
  1 => -> { create_post },
  2 => -> { list_posts },
  3 => -> { find_posts_by_author_id },
  4 => -> (menu) { menu.switch_menu(target_menu: :main_menu) }
}
