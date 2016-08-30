class AlloysController < ApplicationController
  def index
    @alloys = Alloy.all
    respond_to do |format|
      format.html
      format.csv {send_data @alloys.to_csv}
    end
  end

  def import
    Alloy.import(params[:file])
    redirect_to alloys_path, notice: "Alloys Imported"
  end
end
