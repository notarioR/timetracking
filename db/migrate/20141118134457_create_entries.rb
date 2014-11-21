class CreateEntries < ActiveRecord::Migration
  def change
    create_table :entries do |t|
	    t.integer	:project_id
		t.integer	:hours    
		t.integer 	:minutes
		t.integer	:comment
		t.integer	:date
     	t.timestamps
    end
  end
end
