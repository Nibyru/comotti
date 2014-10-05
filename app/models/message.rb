class Message < ActiveRecord::Base
  include ActiveModel::ForbiddenAttributesProtection
  validates :name, :phone, :cellphone, :mail, :body, presence: true
end
