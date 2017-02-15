class Conf < ActiveRecord::Base

  def self.load
    self.find_or_create_by(id: 1)
  end

  def self.set(sym, value)
    conf = self.load
    if conf.respond_to?(sym)
      conf.update_attribute(sym, value)
    else
      raise "Unknown Conf parameter :#{sym}"
    end
  end

  def self.method_missing(sym)
    conf = self.load
    if conf.respond_to?(sym)
      conf.send(sym)
    else
      raise "Unknown Conf parameter :#{sym}"
    end
  end

end
