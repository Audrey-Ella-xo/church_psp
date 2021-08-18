class UmbrellaBoddiesController < ApplicationController
  before_action :set_umbrella_boddy, only: %i[ show edit update destroy ]

  # GET /umbrella_boddies or /umbrella_boddies.json
  def index
    @umbrella_boddies = UmbrellaBoddy.all
  end

  # GET /umbrella_boddies/1 or /umbrella_boddies/1.json
  def show
  end

  # GET /umbrella_boddies/new
  def new
    @umbrella_boddy = UmbrellaBoddy.new
  end

  # GET /umbrella_boddies/1/edit
  def edit
  end

  # POST /umbrella_boddies or /umbrella_boddies.json
  def create
    @umbrella_boddy = UmbrellaBoddy.new(umbrella_boddy_params)

    respond_to do |format|
      if @umbrella_boddy.save
        format.html { redirect_to @umbrella_boddy, notice: "Umbrella boddy was successfully created." }
        format.json { render :show, status: :created, location: @umbrella_boddy }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @umbrella_boddy.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /umbrella_boddies/1 or /umbrella_boddies/1.json
  def update
    respond_to do |format|
      if @umbrella_boddy.update(umbrella_boddy_params)
        format.html { redirect_to @umbrella_boddy, notice: "Umbrella boddy was successfully updated." }
        format.json { render :show, status: :ok, location: @umbrella_boddy }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @umbrella_boddy.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /umbrella_boddies/1 or /umbrella_boddies/1.json
  def destroy
    @umbrella_boddy.destroy
    respond_to do |format|
      format.html { redirect_to umbrella_boddies_url, notice: "Umbrella boddy was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_umbrella_boddy
      @umbrella_boddy = UmbrellaBoddy.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def umbrella_boddy_params
      params.require(:umbrella_boddy).permit(:organisation, :meetingDay, :feastDay, :patronSaint, :motto, :slogan)
    end
end
