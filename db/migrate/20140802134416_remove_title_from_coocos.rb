class RemoveTitleFromCoocos < ActiveRecord::Migration
  def change
    remove_column :coocos, :title, :string
  end
end
