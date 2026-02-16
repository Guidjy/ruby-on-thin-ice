# frozen_string_literal: true

module Printable
  def print
    instance_variables.each { |variable| puts "#{variable}: #{instance_variable_get(variable)}" }
    puts ""
  end
end
