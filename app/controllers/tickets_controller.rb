class TicketsController < ApplicationController

    before_action :authenticate
    before_action :set_user, only: %i[ show edit update destroy ]


    def index
        @ticket = current_user.tickets.all 
    end

    def new 
     @ticket = Ticket.new
    end

    def create
      @ticket = Ticket.new(ticket_params)
      @ticket.user = current_user
      respond_to do |format|
        if @ticket.save
          format.html { redirect_to root_path, notice: "Person was successfully created." }
          format.json { render :show, status: :created, location: @ticket }
        else
          format.html { render :new, status: :unprocessable_entity }
          format.json { render json: @ticket.errors, status: :unprocessable_entity }
        end
      end
    end

    def destroy 
      @ticket = @ticket.find_by(params[:id]).delete
    end

    def show 
        @ticket = Ticket.find_by(params[:id])  
    end


    private 

    def set_user
        #@user = User.find(params[:id])
    end

    def ticket_params
        params.require(:ticket).permit(:ticket_number)
    end


end
