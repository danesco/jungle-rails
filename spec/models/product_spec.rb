require 'rails_helper'

RSpec.describe Product, type: :model do
  describe 'Validations' do
    subject {
      described_class.new(name: "anything", price: 100.00, quantity: 10, category_id: 1)
    }
    it "has a valid name" do
      subject.name = nil
      expect(subject).to_not be_valid
    end

    it "has a valid price" do
      subject.price = nil
      expect(subject).to_not be_valid
    end
    it "has a valid quantity" do
      subject.quantity = nil
      expect(subject).to_not be_valid
    end
    it "has a valid category_id" do
      subject.category_id = nil
      expect(subject).to_not be_valid
    end
  end
end
