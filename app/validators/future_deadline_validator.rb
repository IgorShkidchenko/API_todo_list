class FutureDeadlineValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    record.errors.add(attribute, I18n.t('task.errors.past_deadline')) if value &.< Date.today
  end
end
