class ListEdit < ApplicationRecord

  belongs_to :editor, :class_name => "AdminUser", :foreign_key => "admin_user_id"
  belongs_to :helper_list

end
