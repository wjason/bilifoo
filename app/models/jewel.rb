class Jewel < ActiveRecord::Base

  belongs_to :sort
  has_and_belongs_to_many :tags
  has_and_belongs_to_many :statuses

  mount_uploader :cover, JewelCoverUploader
  mount_uploader :top_cover, JewelTopCoverUploader

  default_scope { order 'jewels.created_at desc' }

  scope :desc_by_created_params, -> (params){
    includes(:sort, :tags).where(conv_options params)
  }


  def self.conv_options params
    option ={}
    option[params.each_key.first] = { name: params.each_value.first }
    return option
  end

end
