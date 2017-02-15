module ApplicationHelper

  def format_keywords(string)
    string.split("\n").map{|s| s.strip}.join(', ') rescue ''
  end

end
