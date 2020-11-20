class Email < ApplicationRecord
  validates :object
  validates :body
end
