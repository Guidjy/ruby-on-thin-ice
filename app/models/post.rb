# frozen_string_literal: true

require_relative '../utils/printable'

class Post
  include Printable

  attr_reader :title, :body, :author_id

  def initialize(title:, body:, author_id:)
    @title = title
    @body = body
    @author_id = author_id
  end
end
