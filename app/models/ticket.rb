class Ticket < ApplicationRecord
    belongs_to :user

    validates :phone_number, presence: :true 
end
