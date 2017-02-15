class LocalLegalPage < ActiveRecord::Base
  belongs_to :site
  belongs_to :translation
end
