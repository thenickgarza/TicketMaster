class ApplicationRecord < ActiveRecord::Base
  primary_abstract_class
  def generate_random_ticket
        
    random_number = rand(1..10000000000)
    user = User.find_by(id: current_user.id)

    Ticket.create(user_id: user, ticket_number: random_number)
end
end
