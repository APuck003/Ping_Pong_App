class PlayerGamesController < ApplicationController
  def index
    @playergames = PlayerGame.all
  end

  def show
    @playergame = PlayerGame.find(params[:id])
  end

  def new
    @playergame = PlayerGame.new
  end

  def create
    playergame = PlayerGame.new(playergame_params)
    if playergame.valid?
      playergame.save
      redirect_to playergames_path(playergame)
    else
      render :new
    end
  end

  def edit
    @playergame = PlayerGame.find(params[:id])
  end

  def update
    playergame = PlayerGame.find(params[:id])
    if playergame.update(playergame_params)
      redirect_to playergames_path(playergame)
    else
      render :edit
    end
  end

  def destroy
    PlayerGame.find(params[:id]).destroy
  end


  private

  def playergame_params
    params.require(:playergames).permit(:player_id, :game_id, :score)
  end
end
