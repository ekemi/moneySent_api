class Sender < ApplicationRecord
  has_many :receivers
  has_many :locations
end
