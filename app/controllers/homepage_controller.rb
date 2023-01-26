class HomepageController < ApplicationController
  
  
  def index
  end

  def show_tickets
    @ticket = User.find_by(id: current_user.id)
      @ticket = @ticket.tickets.all 
  end

end
