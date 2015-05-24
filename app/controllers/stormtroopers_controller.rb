class StormtroopersController < ApplicationController
  before_action :set_stormtrooper, only: [:show, :edit, :update, :destroy]

  # GET /stormtroopers
  # GET /stormtroopers.json
  def index
    @stormtroopers = Stormtrooper.all
  end

  # GET /stormtroopers/1
  # GET /stormtroopers/1.json
  def show
  end

  # GET /stormtroopers/new
  def new
    @stormtrooper = Stormtrooper.new
  end

  # GET /stormtroopers/1/edit
  def edit
  end

  # POST /stormtroopers
  # POST /stormtroopers.json
  def create
    @stormtrooper = Stormtrooper.new(stormtrooper_params)

    respond_to do |format|
      if @stormtrooper.save
        format.html { redirect_to @stormtrooper, notice: 'Stormtrooper was successfully created.' }
        format.json { render :show, status: :created, location: @stormtrooper }
      else
        format.html { render :new }
        format.json { render json: @stormtrooper.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /stormtroopers/1
  # PATCH/PUT /stormtroopers/1.json
  def update
    respond_to do |format|
      if @stormtrooper.update(stormtrooper_params)
        format.html { redirect_to @stormtrooper, notice: 'Stormtrooper was successfully updated.' }
        format.json { render :show, status: :ok, location: @stormtrooper }
      else
        format.html { render :edit }
        format.json { render json: @stormtrooper.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /stormtroopers/1
  # DELETE /stormtroopers/1.json
  def destroy
    @stormtrooper.destroy
    respond_to do |format|
      format.html { redirect_to stormtroopers_url, notice: 'Stormtrooper was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_stormtrooper
      @stormtrooper = Stormtrooper.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def stormtrooper_params
      params.require(:stormtrooper).permit(:name, :unit)
    end
end
