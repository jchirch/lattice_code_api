class RemoveSkillFromLanguages < ActiveRecord::Migration[7.1]
  def change
    remove_column :languages, :skill, :integer
  end
end
