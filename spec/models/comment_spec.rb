require 'rails_helper'

RSpec.describe Comment, type: :model do
  context 'with database columns' do
    it { is_expected.to have_db_column(:body).of_type(:text).with_options(null: false) }
    it { is_expected.to have_db_column(:image).of_type(:string) }
    it { is_expected.to have_db_column(:created_at).of_type(:datetime).with_options(null: false) }
    it { is_expected.to have_db_column(:updated_at).of_type(:datetime).with_options(null: false) }
    it { is_expected.to have_db_index(:task_id) }
  end

  context 'with assosiations' do
    it { is_expected.to belong_to(:task) }
  end

  context 'with validations' do
    let(:min_length) { Comment::VALID_LENGTH_RANGE.min }
    let(:max_length) { Comment::VALID_LENGTH_RANGE.max }

    it { is_expected.to validate_presence_of(:body) }
    it { is_expected.to validate_length_of(:body).is_at_least(min_length).is_at_most(max_length) }
  end
end
