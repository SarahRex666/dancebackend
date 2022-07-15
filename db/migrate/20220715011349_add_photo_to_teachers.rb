class AddPhotoToTeachers < ActiveRecord::Migration[7.0]
  def change
    add_column :teachers, :photo_url, :string
  end
end
