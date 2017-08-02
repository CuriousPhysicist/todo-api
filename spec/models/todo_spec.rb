require 'rails_helper'

# test suite for the Todo model
RSpec.describe Todo, :type => :model do

	# Association test
	# ensure Todo model has a 1:m relationship with Item model
	it { should have_many(:items).dependent(:destroy) }

	# Validation test
	# ensure columns title and created_by are present before saving
	it { should validate_presence_of(:title) }
	it { should validate_presence_or(:created_by) }

end