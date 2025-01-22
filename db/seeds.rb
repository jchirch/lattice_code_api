# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

User.create!(firstname: 'John', lastname: 'Doe', email: 'john.doe@example.com', password: 'password123' )
Language.create!(name: 'Ruby')
Language.create!(name: 'Python')
Course.create!(name: 'Ruby to Python', 
              from_language_id:Language.find_by(name: 'Ruby').id, 
              to_language_id: Language.find_by(name: 'Python').id,
              user_id: User.find_by(firstname: 'John').id,
              lesson: 'Intro to Python')