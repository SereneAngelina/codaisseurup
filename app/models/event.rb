class Event < ApplicationRecord
  belongs_to :user

  has_and_belongs_to_many :categories

  has_many :photos

  validates :name, presence: true
  validates :description, presence: true, length: { maximum: 500 }
  #validates :starts_at, presence: true#,date: { before:  :starts_at}
  #validates :ends_at, presence: true
  validate :end_date_after_start_date


  def end_date_after_start_date
    if ends_at.present? && starts_at.present? && ends_at <= starts_at
      errors.add :ends_at, "must be after start date"
    end
end
end
