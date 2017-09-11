class AdminUser < ActiveRecord::Base

  # To configure a different table name:
  # self.table_name = "admin_users"

  has_secure_password

  has_and_belongs_to_many :helper_lists
  has_many :list_edits
  has_many :helper_lists , :through => :list_edits

  EMAIL_REGEX = /\A[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}\Z/i
  # validates_presence_of :first_name
  # validates_length_of :first_name, :maximum => 25
  # validates_presence_of :last_name
  # validates_length_of :last_name, :maximum => 50
  # validates_presence_of :username
  # validates_length_of :username, :within => 8..25
  # validates_uniqueness_of :username
  # validates_presence_of :email
  # validates_length_of :email, :maximum => 100
  # validates_format_of :email, :with => EMAIL_REGEX
  # validates_confirmation_of :email

  # shortcut validations, aka "sexy validations"
  validates :first_name, :presence => true,
                         :length => { :maximum => 25 }
  validates :last_name, :presence => true,
                        :length => { :maximum => 50 }
  validates :username, :length => { :within => 8..25 },
                       :uniqueness => true
  validates :email, :presence => true,
                    :length => { :maximum => 100 },
                    :format => EMAIL_REGEX,
                    :confirmation => true

  scope :sorted, lambda { order("last_name ASC, first_name ASC") }

  def name
      "#{first_name} #{last_name}"
      # Or: first_name + ' ' + last_name
      # Or: [first_name, last_name].join(' ')
  end


end
