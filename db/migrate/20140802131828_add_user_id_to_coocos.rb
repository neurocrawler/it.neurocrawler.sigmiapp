class AddUserIdToCoocos < ActiveRecord::Migration
  def change
    add_column :coocos, :user_id, :integer
  end
end
