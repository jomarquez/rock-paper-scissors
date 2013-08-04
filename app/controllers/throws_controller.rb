class ThrowsController < ApplicationController
  def create
    @choices = ['Rock', 'Paper', 'Scissors']

    @throw = Throw.new(throw_params)
    @throw.computer_choice = @choices.sample

    if @throw.choice.eql?(@throw.computer_choice)
      @throw.result = "Tied"
    else
      @throw.result = get_winner(@throw.choice, @throw.computer_choice)
    end 
        
    @throw.save
    redirect_to throw_path(@throw)
  end

  def destroy
    Throw.find(params[:id]).destroy
    redirect_to throw_path(@throw)
  end

  def index
    @throws = Throw.all
  end
 
  def new
    @throw = Throw.new
  end
  
  def show
    @throw = Throw.find(params[:id])
  end

  def get_winner(player, computer)
    result = case player
    when "Rock"
      if computer.eql?("Scissors")
        then "Won"
      else "Lost"
      end
    when "Scissors"
      if computer.eql?("Paper")
        then  "Won"
      else "Lost"
      end
    when "Paper"
      if computer.eql?("Rock")
        then "Won"
      else "Lost"
      end
    end
  end

  def throw_params
    params.require(:throw).permit(:choice, :computer_choice, :win)
  end
end
