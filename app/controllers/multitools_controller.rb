class MultitoolsController < ApplicationController
  before_action :set_multitool, only: [:show, :edit, :update, :destroy]

  # GET /multitools
  # GET /multitools.json
  def index
    @multitools = Multitool.all
  end

  # GET /multitools/1
  # GET /multitools/1.json
  def show
  end

  # GET /multitools/new
  def new
    @multitool = Multitool.new
    @multitool.multitool_upgrades.build
  end

  # GET /multitools/1/edit
  def edit
    @multitool.multitool_upgrades.build
  end

  # POST /multitools
  # POST /multitools.json
  def create
    @multitool = Multitool.new(multitool_params)

    respond_to do |format|
      if @multitool.save
        format.html { redirect_to @multitool, notice: 'Multitool was successfully created.' }
        format.json { render :show, status: :created, location: @multitool }
      else
        format.html { render :new }
        format.json { render json: @multitool.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /multitools/1
  # PATCH/PUT /multitools/1.json
  def update
    respond_to do |format|
      if @multitool.update(multitool_params)
        format.html { redirect_to @multitool, notice: 'Multitool was successfully updated.' }
        format.json { render :show, status: :ok, location: @multitool }
      else
        format.html { render :edit }
        format.json { render json: @multitool.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /multitools/1
  # DELETE /multitools/1.json
  def destroy
    @multitool.destroy
    respond_to do |format|
      format.html { redirect_to multitools_url, notice: 'Multitool was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_multitool
      @multitool = Multitool.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def multitool_params
      params.require(:multitool).permit(:name, :user_id, multitool_upgrades_attributes[:name, :recipe, :category])
    end
end
