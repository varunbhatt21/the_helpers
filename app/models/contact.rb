class Contact < ApplicationRecord

    include ActiveModel::Validations


    scope :sorted, lambda { order("contacts.id ASC") }

end
