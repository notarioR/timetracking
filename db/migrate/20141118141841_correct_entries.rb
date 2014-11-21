class CorrectEntries < ActiveRecord::Migration
  def change
  	remove_column :entries, :comment
  	remove_column  :entries, :date
  	add_column :entries, :comment, :text
  	add_column :entries, :date, :date
  end
end
