class ChangeDescription < ActiveRecord::Migration
  def change
        add_column :projects, :description, :string
  end
end
