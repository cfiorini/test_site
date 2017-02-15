class Translation < ActiveRecord::Base

  belongs_to :site
  belongs_to :language
  has_many :local_news_items, dependent: :destroy
  has_many :local_legal_pages, dependent: :destroy

  def language_name
    language.try :name
  end

end
