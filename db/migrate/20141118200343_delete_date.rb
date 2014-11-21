class DeleteDate < ActiveRecord::Migration
  def change
        remove_column  :entries, :date
        add_column :entries, :datetime, :date
  end
end
