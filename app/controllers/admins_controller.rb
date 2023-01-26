class AdminsController < ApplicationController

    http_basic_authenticate_with name: "admis", password: "password"
    
    layout 'layouts/admin'

    def index
        @ticket = Ticket.all 
        @user = User.all 
    end

    
end
