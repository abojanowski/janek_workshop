class Invitation < ActiveRecord::Base
  belongs_to :inviting_id, class_name: "User"
  belongs_to :invited_id, class_name: "User"
end
