class AddUserFaveriteTable < ActiveRecord::Migration[6.0]
  def change
    create_table :user_faverites do|t|
      t.belongs_to :user
      t.belongs_to :show
      t.timestamps null: false
    end
  end
end
