class AddDescriptionTypeTextn < ActiveRecord::Migration
  def change
	add_column :projects, :desciption, :string
  end
end
