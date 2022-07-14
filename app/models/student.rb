class Student < ApplicationRecord
    has_many :dance_classes
    has_many :teachers, through: :dance_classes

    private
end
