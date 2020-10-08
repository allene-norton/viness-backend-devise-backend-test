class CreateUsersWines < ActiveRecord::Migration[6.0]
  def change
    create_table :users_wines do |t|
      t.integer :user_id
      t.integer :wine_id

      t.timestamps
    end
  end
end
