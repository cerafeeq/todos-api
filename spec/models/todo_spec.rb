require 'rails_helper'

RSpec.describe Todo, type: :model do
  # Association test
  # ensure Todo model has 1:m relationship with the Item model
  it { should have_many(:items).dependent(:destroy) }

  # Validation test
  it { should validate_presence_of(:title) }
  it { should validate_presence_of(:created_by) }
end
