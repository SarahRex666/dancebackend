class RemoveStudentIdFromDanceClasses < ActiveRecord::Migration[7.0]
  def change
    remove_column :dance_classes, :student_id
  end
end
