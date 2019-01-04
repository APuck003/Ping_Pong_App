class GamesController < ApplicationController
  def index
    @games = Game.all
  end

  def show
    @game = Game.find(params[:id])
    @players = @game.players
    @comments = Comment.where(game_id: @game.id)
    @comment = @game.comments.new
    @comment.user = current_user
  end

  def new
    @game = Game.new
    @game.player_games.build
    @game.player_games.build
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
    if game.update(game_params)
      redirect_to games_path(game)
    else
      render :edit
    end
  end

  def destroy
    Game.find(params[:id]).destroy
    redirect_to games_path
  end

    private

    def game_params
      params.require(:game).permit(:location, :ranked, player_games_attributes: [ :id, :score,  :player_id])
    end


end
