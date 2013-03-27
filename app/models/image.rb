class Image < ActiveRecord::Base
  # attr_accessible :title, :body
  attr_accessible :attachment

  has_attached_file :attachment

  validates_with AttachmentPresenceValidator, attributes: :attachment

  belongs_to :user
end
