class User < ApplicationRecord

    has_many :tickets
    has_secure_password

    validates :name, presence: :true
    validates :email, format: { with: /@/, message: "Email needs to contain an @" }, uniqueness: true, presence: :true
    validates :password, presence: :true

end