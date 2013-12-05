class CreateCourseRegistrations < ActiveRecord::Migration
  def change
    create_table :course_registrations do |t|
      t.string :reg_num
      t.integer :student_id
      t.integer :course_id

      t.timestamps
    end
  end
end
