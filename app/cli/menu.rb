# frozen_string_literal: true

require_relative 'actions'

class Menu
  attr_reader :current_menu
  attr_reader :menu_actions

  @@MENUS = {
    main_menu: 0,
    user_actions: 1,
    post_actions: 2
  }

  def initialize
    @current_menu = :main_menu
    @menu_actions = MAIN_MENU_ACTIONS
  end

  def switch_menu(target_menu:)
    @current_menu = target_menu

    case target_menu
    when :user_actions
      @menu_actions = USER_ACTIONS
    when :post_actions
      @menu_actions = POST_ACTIONS
    else
      @menu_actions = MAIN_MENU_ACTIONS
    end
  end

  def list_actions
    Console.print_line
    case @current_menu
    when :user_actions
      puts "User actions"
      puts "  1) Create user"
      puts "  2) List users"
      puts "  3) Main menu"
    when :post_actions
      puts "post_actions"
      puts "  1) Create post"
      puts "  2) List posts"
      puts "  3) Find post by author"
      puts "  4) Main menu"
    else
      puts "Main menu"
      puts "  1) Users"
      puts "  2) Posts"
      puts "  3) Exit"
    end
  end

  def action_is_valid?(action)
    n_actions = @menu_actions.size
    action > 0 && action <= n_actions
  end

  def execute_action
    action = 0
    until action_is_valid?(action)
      action = Console.get_input("> ").to_i
    end

    if @menu_actions[action].arity == 0
      @menu_actions[action].call
    else
      @menu_actions[action].call(self)
    end
  end

end
