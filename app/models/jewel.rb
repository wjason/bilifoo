class Jewel < ActiveRecord::Base

  belongs_to :sort
  has_and_belongs_to_many :tags
  has_and_belongs_to_many :statuses

  mount_uploader :cover, JewelCoverUploader
  mount_uploader :top_cover, JewelTopCoverUploader


end
