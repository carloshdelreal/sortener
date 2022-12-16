class Url < ApplicationRecord
  validates_presence_of :url, :source
  validates :url, uniqueness: true
  has_many :visits

  before_validation :generate_url

  def generate_url
    self.url = SecureRandom.hex(5)
  end
end
