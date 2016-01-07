class CreateClassrooms < ActiveRecord::Migration
  def change
    create_table :classrooms do |t|
      t.references :student, index: true
      t.references :course, index: true
      t.datetime :entry_at

      t.timestamps null: false
    end
    add_foreign_key :classrooms, :students, name: "classrooms_student_id_fk"
    add_foreign_key :classrooms, :courses, name: "classrooms_course_id_fk"
  end
end
