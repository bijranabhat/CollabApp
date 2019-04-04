require 'rails_helper'
#Add specs for the associations, so the file should look like this:



RSpec.describe Post, type: :model do
 context 'Associations' do
    it 'belongs_to user' do
      association = described_class.reflect_on_association(:user).macro
      expect(association).to eq :belongs_to
    end

    it 'belongs_to category' do
      association = described_class.reflect_on_association(:category).macro
      expect(association).to eq :belongs_to
    end
  end
end

#We use the described_class method to get the current context’s class.
#Which is basically the same as writing Post in this case. 
#Then we use reflect_on_association method to check that it returns a correct association.