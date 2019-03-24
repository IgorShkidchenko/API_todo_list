require 'rails_helper'

RSpec.describe Task, type: :model do
  context 'with database columns' do
    it { is_expected.to have_db_column(:name).of_type(:string).with_options(null: false) }
    it { is_expected.to have_db_column(:complete).of_type(:boolean).with_options(null: false, default: false) }
    it { is_expected.to have_db_column(:deadline).of_type(:datetime) }
    it { is_expected.to have_db_column(:position).of_type(:integer) }
    it { is_expected.to have_db_column(:comments_count).of_type(:integer) }
    it { is_expected.to have_db_column(:created_at).of_type(:datetime).with_options(null: false) }
    it { is_expected.to have_db_column(:updated_at).of_type(:datetime).with_options(null: false) }
    it { is_expected.to have_db_index(:project_id) }
  end

  context 'with assosiations' do
    it { is_expected.to belong_to(:project) }
    it { is_expected.to have_many(:comments).dependent(:destroy) }
  end

  context 'with validations' do
    let(:valid_date) { Time.now + 1.week }
    let(:invalid_date) { Time.now - 1.week }
    let(:message) { I18n.t('task.errors.past_deadline') }

    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to allow_value(valid_date).for(:deadline).with_message(message) }
    it { is_expected.not_to allow_value(invalid_date).for(:deadline).with_message(message) }
  end
end
