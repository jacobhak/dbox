class AddUserIdToImages < ActiveRecord::Migration
  def change
    change_table :images do |t|
      t.integer :user_id
    end
  end
end
