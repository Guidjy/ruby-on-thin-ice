# frozen_string_literal: true

require 'json'

module Serializable
  def serialize
    object_hash = Hash.new
    instance_variables.each_with_object(object_hash) do |variable, hash|
      hash[variable[1..-1]] = instance_variable_get(variable)
    end
    JSON.generate(object_hash)
  end
end
