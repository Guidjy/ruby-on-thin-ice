# frozen_string_literal: true

require_relative 'model'

class User < Model
  attr_reader :id, :name
  FILE_PATH = "app/data/users.json"

  def initialize(id:, name:)
    @id = id
    @name = name
  end

  def get_file_path
    FILE_PATH
  end
end
