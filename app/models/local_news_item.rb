class LocalNewsItem < ActiveRecord::Base
  belongs_to :site
  mount_uploader :image, LocalNewsImageUploader
end
