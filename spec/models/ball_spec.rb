require 'rails_helper'

RSpec.describe Ball, type: :model do

  before{@ball = Ball.new}

  describe 'Testes de preenchimento do model Ball' do

    it 'name consegue ser preenchido?' do
      @ball.name = 'bola de volei'
      expect(@ball.name).to eq('bola de volei')
    end

    it 'game consegue ser preenchido?' do
      @ball.game = ''
      expect(@ball.game).to eq('volei')
    end

  end

end