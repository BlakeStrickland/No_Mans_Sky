class EnergysController < ApplicationController
  def index
    @energys = Energy.all
    respond_to do |format|
      format.html
      format.csv {send_data @energys.to_csv}
    end
  end

  def import
    Energy.import(params[:file])
    redirect_to energys_path, notice: "Energy Imported"
  end
end
