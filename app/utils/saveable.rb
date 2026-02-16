# frozen_string_literal: true

module Saveable
  def save
    path = self.get_file_path

    current_data = if File.exist?(path) && !File.zero?(path)
                     JSON.parse(File.read(path))
                   else
                     []
                   end

    new_entry = self.serialize
    current_data.each { |entry| current_data.delete(entry) if entry == new_entry}
    current_data << new_entry

    File.open(path, 'w') do |file|
      file.write(current_data)
    end
  end
end
