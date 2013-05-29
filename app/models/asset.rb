# encoding: utf-8
class Asset < ActiveRecord::Base
  attr_accessible :assetable_id, :assetable_type, :attachment, :delete_attachment

  belongs_to :assetable, :polymorphic => true

  attr_accessor :delete_attachment
  before_validation { self.attachment.clear if self.delete_attachment == '1' }

  # Paperclip image attachments
  has_attached_file :attachment, :processors => [:watermark], :styles => { :thumb => '150x150>',
                                                                           :original => { :watermark_path => "#{Rails.root}/public/images/logo.png" },
                                                                           :main => { :geometry => "1440x900#", :watermark_path => "#{Rails.root}/public/images/logo.png" },
                                                                           :medium => { :geometry => "800x600#", :watermark_path => "#{Rails.root}/public/images/logo.png" },
                                                                           :xl => { :geometry => "640x360#", :watermark_path => "#{Rails.root}/public/images/logo.png" },
                                                                           :small => { :geometry => "210x210#" }
  },
                    :url    => '/assets/attachment/:id/:style/:basename.:extension',
                    :path   => ':rails_root/public/assets/attachment/:id/:style/:basename.:extension'
end
