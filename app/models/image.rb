class Image < ActiveRecord::Base
  # attr_accessible :title, :body
  attr_accessible :attachment

  has_attached_file :attachment

  validates_with AttachmentPresenceValidator, attributes: :attachment
  
  has_and_belongs_to_many :tags  

  belongs_to :user
end
