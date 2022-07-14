class AddTimesToDanceClasses < ActiveRecord::Migration[7.0]
  def change
    add_column :dance_classes, :time, :string
  end
end
