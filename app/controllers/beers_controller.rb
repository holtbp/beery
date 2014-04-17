class BeersController < ApplicationController
  before_action :set_beer, only: [:show, :edit, :update, :destroy]

  # GET /beers
  # GET /beers.json
  def index
    @beers = Beer.all
    render json: @beers.to_json
  end

  # GET /beers/1
  # GET /beers/1.json
  def show
    render json: @beer.to_json
  end

  # GET /beers/new
  def new
    @beer = Beer.new
    render json: @beer.to_json
  end

  # GET /beers/1/edit
  def edit
    @beer = Beer.find(params[:id])
    render json: @beer.to_json
  end

  # POST /beers
  # POST /beers.json
  def create
    @beer = Beer.new(beer_params)

    if @beer.save
      render action: 'show', status: :created, location: @beer
    else
      render json: @beer.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /beers/1
  # PATCH/PUT /beers/1.json
  def update
    if @beer.update(beer_params)
      head :no_content
    else
      render json: @beer.errors, status: :unprocessable_entity
    end
  end

  # DELETE /beers/1
  # DELETE /beers/1.json
  def destroy
    @beer.destroy
    head :no_content
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_beer
    @beer = Beer.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def beer_params
    params.require(:beer).permit(:name)
  end

end
