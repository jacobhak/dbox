class Group < ActiveRecord::Base
  attr_accessible :name


  validates :name, length: { in:  2..30 }

  has_and_belongs_to_many :users

end
