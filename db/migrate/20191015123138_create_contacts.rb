class CreateContacts < ActiveRecord::Migration[5.2]
  def up
    create_table :contacts do |t|    
      t.string :phone_number , :null => false, :default => ""
      t.string :address , :null => false, :default => ""
    end
  end

  def down
    drop_table :contacts    
  end
end
