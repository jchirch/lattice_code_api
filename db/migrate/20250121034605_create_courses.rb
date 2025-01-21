class CreateCourses < ActiveRecord::Migration[7.1]
  def change
    create_table :courses do |t|
      t.string :name
      t.integer :from_language_id
      t.integer :to_language_id
      t.references :user, null: false, foreign_key: true
      t.text :lesson

      t.timestamps
    end
  end
end
