class EscortsController < ApplicationController
  before_action :set_escort, only: [:show, :edit, :update, :destroy]

  # GET /escorts
  # GET /escorts.json
  def index
    @escorts = Escort.all
  end

  # GET /escorts/1
  # GET /escorts/1.json
  def show
  end

  # GET /escorts/new
  def new
    @escort = Escort.new
  end

  # GET /escorts/1/edit
  def edit
  end

  # POST /escorts
  # POST /escorts.json
  def create
    @escort = Escort.new(escort_params)

    respond_to do |format|
      if @escort.save
        format.html { redirect_to @escort, notice: 'Escort was successfully created.' }
        format.json { render :show, status: :created, location: @escort }
      else
        format.html { render :new }
        format.json { render json: @escort.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /escorts/1
  # PATCH/PUT /escorts/1.json
  def update
    respond_to do |format|
      if @escort.update(escort_params)
        format.html { redirect_to @escort, notice: 'Escort was successfully updated.' }
        format.json { render :show, status: :ok, location: @escort }
      else
        format.html { render :edit }
        format.json { render json: @escort.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /escorts/1
  # DELETE /escorts/1.json
  def destroy
    @escort.destroy
    respond_to do |format|
      format.html { redirect_to escorts_url, notice: 'Escort was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_escort
      @escort = Escort.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def escort_params
      params.require(:escort).permit(:name, :age, :description, :rate_per_hour_in_cents)
    end
end
