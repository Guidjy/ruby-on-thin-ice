# frozen_string_literal: true

module Printable
  def print_line
    puts "-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-"
  end

  def print
    puts ""
    instance_variables.each { |variable| puts "#{variable}: #{instance_variable_get(variable)}" }
  end
end
