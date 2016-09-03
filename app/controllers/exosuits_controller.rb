class ExosuitsController < ApplicationController
  before_action :set_exosuit, only: [:show, :edit, :update, :destroy]

  # GET /exosuits
  # GET /exosuits.json
  def index
    @exosuits = Exosuit.all
  end

  # GET /exosuits/1
  # GET /exosuits/1.json
  def show
  end

  # GET /exosuits/new
  def new
    @exosuit = Exosuit.new
  end

  # GET /exosuits/1/edit
  def edit
  end

  # POST /exosuits
  # POST /exosuits.json
  def create
    @exosuit = Exosuit.new(exosuit_params)

    respond_to do |format|
      if @exosuit.save
        format.html { redirect_to @exosuit, notice: 'Exosuit was successfully created.' }
        format.json { render :show, status: :created, location: @exosuit }
      else
        format.html { render :new }
        format.json { render json: @exosuit.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /exosuits/1
  # PATCH/PUT /exosuits/1.json
  def update
    respond_to do |format|
      if @exosuit.update(exosuit_params)
        format.html { redirect_to @exosuit, notice: 'Exosuit was successfully updated.' }
        format.json { render :show, status: :ok, location: @exosuit }
      else
        format.html { render :edit }
        format.json { render json: @exosuit.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /exosuits/1
  # DELETE /exosuits/1.json
  def destroy
    @exosuit.destroy
    respond_to do |format|
      format.html { redirect_to exosuits_url, notice: 'Exosuit was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_exosuit
      @exosuit = Exosuit.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def exosuit_params
      params.require(:exosuit).permit(:name, :user_id, exosuit_upgrades_attributes[:name, :user_id])
    end
end
