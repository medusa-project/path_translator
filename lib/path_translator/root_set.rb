#this is a convenience class to allow grouping together all roots in a singleton
#so that they can be configured at start and then addressed as needed
require_relative 'root'
require 'singleton'

module PathTranslator
  class RootSet < Object
    include Singleton

    attr_accessor :roots

    def initialize
      self.roots = Hash.new
    end

    def add_root(name, root_path)
      roots[name] = Root.new(root_path)
    end

    def [](name)
      roots[name]
    end

    def self.add_root(name, root_path)
      self.instance.add_root(name, root_path)
    end

    def self.[](name)
      self.instance[name]
    end

  end
end