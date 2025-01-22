class AddForeignKeysToCourses < ActiveRecord::Migration[7.1]
  def change
    add_foreign_key :courses, :languages, column: :from_language_id
    add_foreign_key :courses, :languages, column: :to_language_id
  end
end
