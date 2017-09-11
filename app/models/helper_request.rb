class HelperRequest < ApplicationRecord

  include ActiveModel::Validations
  EMAIL_REGEX = /\A[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}\Z/i
  validates :name, :presence => true,
                   :length => { :maximum => 25 }

  validates :mobile, :presence => true,
                      :length => { :maximum => 11 }

  validates :address, :presence => true,
                     :length => { :maximum => 50 }
  validates :email, :presence => true,
                    :length => { :maximum => 25 },
                    :format => EMAIL_REGEX,
                    :confirmation => true


    scope :sorted, lambda { order("helper_requests.id ASC") }
end
