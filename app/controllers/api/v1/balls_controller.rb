class Api::V1::BallsController < ApplicationController

  #before_action :set_ball, only: %i[] # show, update destroy

  def index
    @balls = Ball.all 
    render json: @balls
  end

private

def set_ball
  @ball = Ball.find(params[:id])
end

def ball_params
  params.require(:ball).permit(:name, :game)
end

end