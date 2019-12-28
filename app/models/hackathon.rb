class Hackathon < ApplicationRecord
  validates :name, presence: true
  validates :description, presence: true
  validates :status, presence: true
  
  enum status: [:draft, :published, :open, :closed, :archived]
end
