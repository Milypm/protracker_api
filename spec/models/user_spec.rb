require 'rails_helper'

RSpec.describe User, type: :model do
  it { should have_many(:projects).dependent(:destroy) }
  it { should have_many(:project_tasks).dependent(:destroy) }
  it { should have_many(:dev_tasks).dependent(:destroy) }
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:role) }
end
