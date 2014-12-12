class Message < ActiveRecord::Base
  include ActiveModel::ForbiddenAttributesProtection
  attr_accessible :name,:company,:phone,:cellphone,:mail,:subject,:body
  validates :name, :phone, :cellphone, :mail, :body, presence: true
end
