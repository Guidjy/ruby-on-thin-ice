# frozen_string_literal: true

require_relative '../utils/printable'
require_relative '../utils/serializable'
require_relative '../utils/saveable'

class Model
  include Printable
  include Serializable
  include Saveable

  def get_file_path
    raise NotImplementedError, "#{self.class} must implement #get_file_path"
  end

  def all
    raise NotImplementedError, "#{self.class} must implement #all"
  end
end
