require 'pathname'
require_relative 'illegal_path_error'

module PathTranslator
  class Root < Object
    attr_accessor :root_path

    def initialize(root_path)
      self.root_path = Pathname.new(root_path)
    end

    def local_path_to(relative_path)
      Pathname.new(File.join(root_path, relative_path))
    end

    def absolute_path_to(relative_path)
      local_path_to(relative_path).realpath
    end
    
    def ensure_local_path(relative_path)
      local_path_to(relative_path).tap { |path| path.mkpath }
    end

    def entries_at(relative_path)
      local_path_to(relative_path).children
    end

    def files_at(relative_path)
      entries_at(relative_path).select {|entry| entry.file?}
    end

    def directories_at(relative_path)
      entries_at(relative_path).select {|entry| entry.directory?}
    end

    def valid_relative_path?(relative_path)
      local_path_to(relative_path).realdirpath.to_s.start_with?(root_path.realpath.to_s)
    end

    def exist?(relative_path)
      File.exist?(local_path_to(relative_path))
    end

    def path_translator_root_to(relative_path)
      PathTranslator::Root.new(local_path_to(relative_path))
    end
    
  end
end
