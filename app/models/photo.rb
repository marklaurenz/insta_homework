class Photo < ActiveRecord::Base
  has_many :comments
  belongs_to :user
  has_many :favorites
  has_many :fans, :through => :favorites, :source => :user
  validates :image_url, :presence => true, :uniqueness => { :scope => :caption }
  validates :user_id, :presence => true
end
