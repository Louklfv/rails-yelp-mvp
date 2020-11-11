class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  validates :name, :address, :category, presence: true
  validates :category, acceptance: { accept: ['chinese', 'italian', 'japanese', 'french', 'belgian'] }
  # validates :phone_number, format: { with: '/^((\+)33|0)[1-9](\d{2}){4}$/' }
end
