# frozen_string_literal: true

require_relative '../utils/printable'

class User
  include Printable

  attr_reader :id, :name

  def initialize(id:, name:)
    @id = id
    @name = name
  end
end
