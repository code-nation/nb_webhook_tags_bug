class PersonWebhook < ApplicationRecord
  scope :has_missing_tags, -> { where(has_missing_tags: true) }
end
