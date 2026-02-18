# frozen_string_literal: true

require 'io/console'

class Console

  def self.print_line
    puts "-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-"
  end

  def self.get_input(message=nil)
    print message unless message.nil?
    $stdout.flush
    gets
  end

  def self.clear_terminal
    $stdout.clear_screen
  end

end
