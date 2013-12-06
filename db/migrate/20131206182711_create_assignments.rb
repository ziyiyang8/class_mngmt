class CreateAssignments < ActiveRecord::Migration
  def change
    create_table :assignments do |t|
      t.string :title
      t.text :details
      t.timestamp :due_date
      t.boolean :done

      t.timestamps
    end
  end
end
