# frozen_string_literal: true

class ArticlesController < ApplicationController
  def index
    @articles = Article.where(published_at: Time.current..Date::Infinity.new)
                       .order(published_at: :asc)
                       .group_by { |a| a.published_at.beginning_of_month }
  end
end
