class Url < ApplicationRecord
  validates_presence_of :url, :source
end
