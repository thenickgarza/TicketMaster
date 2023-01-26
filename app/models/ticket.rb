class Ticket < ApplicationRecord
    belongs_to :user 

    validates :ticket_number, presence: :true
end
