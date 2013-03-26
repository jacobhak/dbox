class Image < ActiveRecord::Base
  # attr_accessible :title, :body
  attr_accessible :attachment

  has_attached_file :attachment
end
