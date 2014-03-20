class BeersController < ApplicationController
  before_action :set_beer, only: [:show, :edit, :update, :destroy]

  # GET /beers
  # GET /beers.json
  def index
    @beers = Beer.all
    respond_to do |format|
      format.json { render json: @beers.to_json }
    end
  end

  # GET /beers/1
  # GET /beers/1.json
  def show
    respond_to do |format|
      format.json { render json: @beer.to_json }
    end
  end

  # GET /beers/new
  def new
    @beer = Beer.new

    respond_to do |format|
      format.json { render json: @beer.to_json }
    end
  end

  # GET /beers/1/edit
  def edit
    @beer = Beer.find(params[:id])

    respond_to do |format|
      format.json { render json: @beer.to_json }
    end
  end

  # POST /beers
  # POST /beers.json
  def create
    @beer = Beer.new(beer_params)

    respond_to do |format|
      if @beer.save
        format.json { render action: 'show', status: :created, location: @beer }
      else
        format.json { render json: @beer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /beers/1
  # PATCH/PUT /beers/1.json
  def update
    respond_to do |format|
      if @beer.update(beer_params)
        format.json { head :no_content }
      else
        format.json { render json: @beer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /beers/1
  # DELETE /beers/1.json
  def destroy
    @beer.destroy
    respond_to do |format|
      format.json { head :no_content }
    end
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
