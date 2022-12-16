class Url < ApplicationRecord
  validates_presence_of :url, :source

  before_validation :generate_url

  def generate_url
    self.url = SecureRandom.uuid.slice(0,8)
  end
end
