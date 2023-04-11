class Ticket < ApplicationRecord
    belongs_to :user 

    validates :ticket_number, presence: :true

    def generate_random_ticket
        
        random_number = rand(1..10000000000)
        # user = User.find_by(id: current_user.id)

        Ticket.create(user_id: 1, ticket_number: random_number)
    end
end
