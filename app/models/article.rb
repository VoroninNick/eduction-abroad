class Article < ActiveRecord::Base
  attr_accessible :avatar, :full_descr, :name, :published, :short_descr, :slug

  validates_presence_of :name, :slug, :short_descr
  validates_uniqueness_of :name, :slug
  before_validation :get_url

  has_attached_file :avatar,
      :styles => {
          admin:      '65x65#',
          thumb:      '100x100#',
          show:       '320x320#',
          retina:     '640x640#'
      },
      :storage => :s3,
      :s3_credentials => Rails.root.join("config/amazon-s3.yml"),
      :path => '/:style/:id/:filename',
      :url  => ':s3_eu_url'

  def to_param
    slug
  end

  def get_url
    self.slug ||= name.parameterize
  end
end
