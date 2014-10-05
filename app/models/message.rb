class Message < ActiveRecord::Base
  validates :name, :phone, :cellphone, :email, :body, presence: true
end
