# frozen_string_literal: true

module ArticleDecorator
  def estimated_reading_time
    content.length / 600
  end
end
