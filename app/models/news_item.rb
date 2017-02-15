class NewsItem < ActiveRecord::Base
  mount_uploader :image, NewsImageUploader
end
