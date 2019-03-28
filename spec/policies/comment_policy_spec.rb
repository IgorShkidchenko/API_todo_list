require 'rails_helper'

describe CommentPolicy do
  subject(:comment_policy) { described_class.new(user, comment) }

  let(:resolved_scope) { described_class::Scope.new(user, Comment.all).resolve }
  let(:comment) { create(:comment) }
  let(:another_comment) { create(:comment) }
  let(:actions) { %i[create destroy] }

  context 'with out user' do
    let(:user) { nil }

    it { expect { comment_policy }.to raise_error Pundit::NotAuthorizedError }
    it { expect { resolved_scope }.to raise_error Pundit::NotAuthorizedError }
  end

  context 'with user' do
    let(:user) { comment.task.project.user }

    it { is_expected.to permit_actions(actions) }
    it { expect(resolved_scope).to include(comment) }
    it { expect(resolved_scope).not_to include(another_comment) }
  end
end
