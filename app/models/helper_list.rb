class HelperList < ApplicationRecord

  belongs_to :helper_table
  has_and_belongs_to_many :editors , :class_name =>"AdminUser"
  # has_many :list_edits

  acts_as_list :scope => :helper_table



  validates_presence_of :first_name
  validates_length_of :first_name , :maximum => 255
  validates_presence_of :last_name
  validates_length_of :last_name , :maximum => 255


  validates_presence_of :first_name , :last_name
  scope :sorted, lambda { order("helper_lists.position ASC") }
  scope :newest_first, lambda { order("helper_lists.created_at DESC")}
  scope :search, lambda {|query|
    where(["name LIKE ?", "%#{query}%"])
  }
end
