class Event < ApplicationRecord
  belongs_to :user, optional: true

  has_and_belongs_to_many :categories

  has_many :photos, dependent: :destroy

  has_many :registrations, dependent: :destroy
  has_many :guests, through: :registrations, source: :user

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

def bargain?
  price < 60
end

def self.order_by_price
    order :price
  end
end
