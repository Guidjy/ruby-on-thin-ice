# frozen_string_literal: true

class Console

  def self.print_line
    puts "-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-"
  end

  def self.get_input(message=nil)
    print message unless message.nil?
    $stdout.flush
    gets
  end

end
