class DeleteDesciption < ActiveRecord::Migration
  def change
        remove_column  :projects, :desciption
  end
end
