class User < ActiveRecord::Base
  has_many :received_invitations, class_name: "Invitation", foreign_key: 'inviting_id'
  has_many :sent_invitations, class_name: "Invitation", foreign_key: 'invited_id'

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
