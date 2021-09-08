require 'rails_helper'

RSpec.describe Project, type: :model do
  it { should have_many(:project_tasks).dependent(:destroy) }
  it { should belong_to(:user) }
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:deadline) }
  it { should validate_presence_of(:status) }
end
