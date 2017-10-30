class User < ApplicationRecord
  has_many :events, dependent: :destroy
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_secure_token

  has_many :registrations, dependent: :destroy

  has_many :booked_events, through: :registrations, source: :event
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_one :profile

  def has_profile?
    profile.present? && profile.persisted?
  end

  def full_name
    profile.full_name
  end


end
