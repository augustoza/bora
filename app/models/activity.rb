class Activity < ApplicationRecord
  belongs_to :user
  has_many :messages
  validates :title, presence: true
  validates :initial_date, presence: true
  validates :final_date, presence: true
  validates :location, presence: true
  CATEGORIES = ['Ao ar livre', 'Natureza', 'Aventura', 'Cultural', 'Festas', 'Bares', 'Shows', 'Gastronomia', 'Compras', 'Transporte', 'Esportes']
  validates :category, presence: true, inclusion: { in: CATEGORIES }
end
