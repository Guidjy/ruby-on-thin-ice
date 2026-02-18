# frozen_string_literal: true
require_relative 'app/cli/menu'

def main
  menu = Menu.new
  while true
    menu.list_actions
    menu.execute_action
  end
end

main
