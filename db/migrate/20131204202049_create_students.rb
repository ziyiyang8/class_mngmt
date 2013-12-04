class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :full_name
      t.string :title
      t.text :bio
      t.integer :age

      t.timestamps
    end
  end
end
