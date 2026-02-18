# frozen_string_literal: true

require_relative '../utils/printable'

class Menu
  attr_reader :current_menu

  @@MENUS = {
    main_menu: 0,
    user_actions: 1,
    post_actions: 2
  }

  def initialize
    @current_menu = :main_menu
  end

  def switch_menu(target_menu=:main_menu)
    @current_menu = target_menu
  end

  def list_actions
    Console.print_line
    case @current_menu
    when :user_actions
      puts "user actions"
    when :post_actions
      puts "post_actions"
    else
      puts "main menu"
    end
  end

end
