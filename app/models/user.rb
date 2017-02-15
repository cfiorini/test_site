class User < ActiveRecord::Base
  include Clearance::User
  belongs_to :site
  validates :password, presence: true, on: :create
  validates :site_id, presence: true
end
