require 'rails_helper'

RSpec.describe Url, type: :model do
  context "successfully creates urls" do
    it "one url" do
      FactoryBot.create(:url)

      expect(Url.all.count).to be(1)
    end
  end

  context "fails to create url" do
    it "fails to create url without url" do
      url = FactoryBot.build(:url)

      url.url = nil
      
      expect(url).not_to be_valid
    end
    it "fails to create url without source" do
      url = FactoryBot.build(:url)

      url.source = nil
      
      expect(url).not_to be_valid
    end

  end
end
