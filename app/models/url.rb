class Url < ApplicationRecord
  validates_presence_of :url, :source
  validates :url, :source, uniqueness: true
  has_many :visits

  before_validation :generate_url

  def generate_url
    if !self.url
      self.url = SecureRandom.hex(5)
    end
  end
end
