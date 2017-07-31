#!/usr/bin/ruby

Pry.config.history.file = "~/.irb_history"

def r
  reload!
end

class Object
  def local_methods(obj = self)
    (obj.methods - obj.class.superclass.instance_methods).sort
  end
end

def change_log(stream)
  ActiveRecord::Base.logger = Logger.new(stream)
  ActiveRecord::Base.clear_active_connections!
  nil
end

def show_log
  change_log(STDOUT)
end

def hide_log
  change_log(nil)
end
