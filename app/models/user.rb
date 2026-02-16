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

  def self.all
    begin
      users = JSON.parse(File.read(FILE_PATH))
    rescue Errno::ENOENT
      puts "File #{FILE_PATH} does not exist"
    else
      users.each_with_object(Array.new) do |user, arr|
        user = JSON.parse(user)
        user = User.new(id: user["id"], name: user["name"])
        arr << user
      end
    end
  end
end
