class User < ApplicationRecord
    has_secure_password
    has_many :dance_classes
    has_many :teachers, through: :dance_classes

    validates :username, uniqueness: true
end
