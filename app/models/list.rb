class List < ApplicationRecord
  validates :title, presence: true

  belongs_to :user
  has_many :cards
end
