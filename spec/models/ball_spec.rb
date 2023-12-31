require 'rails_helper'

RSpec.describe Ball, type: :model do

  before{@ball = Ball.new}

  describe 'Testes de preenchimento do model Ball' do

    it 'name consegue ser preenchido?' do
      @ball.name = 'bola de volei'
      expect(@ball.name).to eq('bola de volei')
    end

    it 'game consegue ser preenchido?' do
      @ball.game = 'volei'
      expect(@ball.game).to eq('volei')
    end

  end

  describe 'Testes de validação do model Ball' do

    it 'Ball valido com campos obrigatorios preenchidos?' do
      @ball.name = 'bola de futsal'
      @ball.game = 'futsal'
      expect(@ball).to be_valid
    end

    it 'Ball invalido com campos obrigatorios não preenchidos?' do
      ball = Ball.new
      expect(ball).to be_invalid
    end

  end

end