class Api::CreaturesController < ApplicationController
  def index
    @creatures = Creature.all
    render json: @creatures
  end

  def show
    @creature = Creature.find_by_id(params[:id])
    render json: @creature
  end

  def create
    @creature = Creature.new(creature_params)
    if @creature.save
      render json: @creature
    end
  end

  def update
    @creature = Creature.find_by_id(params[:id])
    @creature.update_attributes(creature_params)
    render json: @creature
  end

  def delete
    @creature = Creature.find_by_id(params[:id])
    @creature.destroy
    render json: {
      msg: "Successfully Deleted"
    }
  end
  
  private

  def creature_params
    params.require(:creature).permit(:name, :description)
  end

end
