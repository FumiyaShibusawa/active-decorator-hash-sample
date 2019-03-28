# frozen_string_literal: true

class Article < ApplicationRecord
  with_options presence: true do
    validates :title
    validates :content
    validates :published_at
  end
end
