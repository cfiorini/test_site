class Site < ActiveRecord::Base
  validates :slug, uniqueness: true

  has_many :users
  has_many :translations, dependent: :destroy
  belongs_to :default_translation, class_name: 'Translation',
                                   foreign_key: :default_translation_id,
                                   optional: true

  after_create :create_default_translation

  mount_uploader :map_image, MapUploader
  mount_uploader :header, HeaderUploader

  def create_default_translation
    t = translations.create(language_id: 1)
    self.update default_translation: t
  end

  def local_news_items
    LocalNewsItem.where(translation_id: translation_ids)
  end

  def local_legal_pages
    LocalLegalPage.where(translation_id: translation_ids)
  end

end
