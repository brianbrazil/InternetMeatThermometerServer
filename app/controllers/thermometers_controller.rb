class ThermometersController < ApplicationController
  skip_before_action :verify_authenticity_token
  before_action :set_thermometer, only: [:show, :edit, :update, :destroy]

  # GET /thermometers
  # GET /thermometers.json
  def index
    @thermometers = Thermometer.all
  end

  # GET /thermometers/1
  # GET /thermometers/1.json
  def show
  end

  # GET /thermometers/new
  def new
    @thermometer = Thermometer.new
  end

  # GET /thermometers/1/edit
  def edit
  end

  # POST /thermometers
  # POST /thermometers.json
  def create
    @thermometer = Thermometer.new(thermometer_params)

    respond_to do |format|
      if @thermometer.save
        format.html { redirect_to @thermometer, notice: 'Thermometer was successfully created.' }
        format.json { render action: 'show', status: :created, location: @thermometer }
      else
        format.html { render action: 'new' }
        format.json { render json: @thermometer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /thermometers/1
  # PATCH/PUT /thermometers/1.json
  def update
    respond_to do |format|
      if @thermometer.update(thermometer_params)
        format.html { redirect_to @thermometer, notice: 'Thermometer was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @thermometer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /thermometers/1
  # DELETE /thermometers/1.json
  def destroy
    @thermometer.destroy
    respond_to do |format|
      format.html { redirect_to thermometers_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_thermometer
      @thermometer = Thermometer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def thermometer_params
      params.require(:thermometer).permit(:temperature, :deviceid)
    end
end
