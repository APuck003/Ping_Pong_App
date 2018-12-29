class GamesController < ApplicationController
  def index
    @games = Game.all
  end

  def show
    @game = Game.find(params[:id])
  end

  def new
    @game = Game.new
  end

  def create
    game = Game.new(game_params)
    if game.valid?
      game.save
      redirect_to games_path(game)
    else
      render :new
    end
  end


  def edit
    @game = Game.find(params[:id])
  end

  def update
    game = Game.find(params[:id])
    if game.update
      redirect_to games_path(game)
    else
      render :edit
    end
  end

  def destroy
    Game.find(params[:id]).destroy 
  end

    private

    def game_params
      params.require(:games).permit(:location, :ranked)
    end


end
