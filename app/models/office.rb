class Office < ActiveRecord::Base

  def as_json
    {
      id: "office#{id}",
      title: title,
      description: description,
      pin: (hq ? "circular" : "circular-main"),
      link: (url.blank? ? nil : url),
      x: y,
      y: x
    }
  end
end
