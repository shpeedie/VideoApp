class CreateUserProfiles < ActiveRecord::Migration
  def change
    create_table :user_profiles do |t|
      t.string :name
      t.string :email
      t.string :profile_pic
      t.references :company, index: true

      t.timestamps
    end
  end
end
