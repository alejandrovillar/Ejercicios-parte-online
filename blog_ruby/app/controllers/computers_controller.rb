class ComputersController < ApplicationController
    def index
        @computers = Computer.all
    end

    def show
        @computer = Computer.find(params[:id])
    end

    def new
   		@computer = Computer.new
    end

	def edit
  		@computer = Computers.find(params[:id])
	end

    def create
        @computer = Computer.new(computer_params)
        @computer.save
        redirect_to computer_path(@computer)
    end

	def update
  		@computer = Computer.find(params[:id])
  		@computer.update(computer_params)
  		redirect_to  computer_path(@computer)
	end

	def destroy
	  @computer = Computer.find(params[:id])
	  @computer.destroy

	  redirect_to root_path
	end
	
    private
    def computer_params
        params.require(:computer).permit(:title, :text)
    end
end