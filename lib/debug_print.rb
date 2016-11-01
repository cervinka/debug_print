require "debug_print/version"

class DebugPrint
  @@printer = nil
  @@silent = false

  def self.silent=(silent)
    @@silent = silent
  end

  def self.silent
    @@silent
  end

  def self.printer=(print)
    @@printer = print
  end

  def self.printer
    return @@printer if @@printer
    if defined?(AwesomePrint)
      :ap
    elsif defined?(PrettyPrint)
      :pp
    else
      :p
    end
  end
end

module Kernel

  def debug_print(object, options = {})
    return if DebugPrint.silent
    print = options[:printer] || DebugPrint.printer
    label = options[:label] || 'DEBUG'
    puts "[#{label}: from #{caller.first}]"
    Kernel.send(print, object)
  end

  alias :dp :debug_print
end
