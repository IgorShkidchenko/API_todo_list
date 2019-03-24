require 'rails_helper'

RSpec.describe User, type: :model do
  context 'with database columns' do
    it { is_expected.to have_db_column(:email).of_type(:string).with_options(null: false) }
    it { is_expected.to have_db_column(:password_digest).of_type(:string).with_options(null: false) }
    it { is_expected.to have_db_column(:created_at).of_type(:datetime).with_options(null: false) }
    it { is_expected.to have_db_column(:updated_at).of_type(:datetime).with_options(null: false) }
    it { is_expected.to have_db_index(:email) }
  end

  context 'with assosiations' do
    it { is_expected.to have_many(:projects).dependent(:destroy) }
  end
end
