class Tag < ActiveRecord::Base
  # attr_accessible :title, :body
  #
  has_and_belongs_to_many :images

  validates :name, presence: true
end
