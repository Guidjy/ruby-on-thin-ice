# frozen_string_literal: true

require_relative 'model'

class Post < Model
  attr_reader :title, :body, :author_id
  FILE_PATH = "app/data/posts.json"

  def initialize(title:, body:, author_id:)
    @title = title
    @body = body
    @author_id = author_id
  end

  def get_file_path
    FILE_PATH
  end

  def self.all
    begin
      posts = JSON.parse(File.read(FILE_PATH))
    rescue Errno::ENOENT
      puts "File #{FILE_PATH} does not exist"
    else
      posts.each_with_object(Array.new) do |post, arr|
        post = JSON.parse(post)
        post = Post.new(title: post["title"], body: post["body"], author_id: post["author_id"])
        arr << post
      end
    end
  end

  def self.find_by_author_id(id:)
    Post.all.select { |post| post.author_id == id}
  end

end
