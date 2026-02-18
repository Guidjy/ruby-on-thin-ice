# frozen_string_literal: true

require_relative 'app/models/user'
require_relative 'app/models/post'
require_relative 'app/cli/actions'
require_relative 'app/cli/menu'

def main
  menu = Menu.new
  menu.list_actions
  menu.switch_menu :user_actions
  menu.list_actions
end

main
