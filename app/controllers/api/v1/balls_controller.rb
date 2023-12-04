class Api::V1::BallsController < ApplicationController

  before_action :set_ball, only: %i[show update destroy] # show, update destroy

  def index
    @balls = Ball.all 
    render json: @balls
  end

  def show
    render json: @ball
  end

  def create
    @ball = Ball.new(ball_params)
    if @ball.save
      render json: @ball, status: :created, location: api_v1_ball_url(@ball)
    else
      render json: @ball.errors, status: :unprocessable_entity
    end
  end

  def update
    if @ball.update(ball_params)
      render json: @ball
    else
      render json: @ball.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @ball.destroy!
  end

private

def set_ball
  @ball = Ball.find(params[:id])
end

def ball_params
  params.require(:ball).permit(:name, :game)
end

end