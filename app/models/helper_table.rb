class HelperTable < ApplicationRecord

  has_many :helper_lists

  acts_as_list

  validates_presence_of :name
  validates_length_of :name, :maximum => 255

  scope :sorted, lambda { order("helper_tables.position ASC") }
  scope :newest_first, lambda { order("helper_tables.created_at DESC")}
  scope :search, lambda {|query|
    where(["name LIKE ?", "%#{query}%"])
  }
end
