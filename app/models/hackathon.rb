class Hackathon < ApplicationRecord
  validates :name, presence: true
  validates :description, presence: true
  validates :status, presence: true
  validates :start_date, presence: true, if: Proc.new { |a| a.end_date? }
  validates :end_date, presence: true, if: Proc.new { |a| a.start_date? }
  
  enum status: [:draft, :published, :open, :closed, :archived]
end
