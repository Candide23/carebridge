class CreateFamilyMembers < ActiveRecord::Migration[7.1]
  def change
    create_table :family_members do |t|
      t.string :first_name
      t.string :last_name
      t.date :dob
      t.string :relationship_to_user
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
