# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

ActiveRecord::Base.transaction do
  Article.destroy_all
  ActiveRecord::Base.connection.execute('ALTER TABLE articles AUTO_INCREMENT=1')
  50.times do
    Article.create(
      title: FFaker::Book.title,
      content: FFaker::LoremJA.paragraphs([*10..50].sample).join("\n"),
      published_at: [*1..12].sample.months.after
    )
  end
end
