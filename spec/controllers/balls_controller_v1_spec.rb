require 'rails_helper'

RSpec.describe Api::V1::BallsController, type: :controller do

  before{@ball = Ball.create(name: 'bola de ping pong', game: 'ping pong')}

  describe 'GET /api/v1/balls' do
    it 'Consegue criar um ball e retornar status 200?' do
      get :index
      expect(JSON.parse(response.body).size).to eq(1)
      expect(response).to have_http_status(200)
    end
  end

  describe 'GET /api/v1/balls/id' do
    it 'Consegue listar um ball especifico e reornar status 200?' do
      get :show, params: {id: @ball.id}
      expect(response.body).to include_json(id: @ball.id)
      expect(response).to have_http_status(200)
    end    
  end

  describe 'POST /api/v1/balls' do
    it 'Consegue criar um ball e retornar status 201?' do
      post :create, params: {ball: {name: 'bola de basket', game: 'basket'},format: :json}
      expect(response.body).to include_json(name: 'bola de basket')
      expect(response).to have_http_status(201)
    end
  end

end