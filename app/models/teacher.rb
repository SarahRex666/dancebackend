class Teacher < ApplicationRecord
    has_many :dance_classes
    has_many :students, through: :dance_classes
end
