# frozen_string_literal: true

require_relative '../utils/printable'

class User
  include Printable

  attr_reader :id, :name

  @@user_count = 0

  def initialize(name:)
    @id = @@user_count
    @name = name
    @@user_count += 1
  end
end
